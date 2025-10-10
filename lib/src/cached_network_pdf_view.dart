import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

/// A [StatefulWidget] that displays a PDF document fetched from a network URL
/// with caching support using [flutter_cache_manager].
///
/// This widget downloads and caches the PDF file, reducing repeated network
/// calls for the same document. It uses [flutter_pdfview] for rendering.
class CachedNetworkPdfViewer extends StatefulWidget {
  /// Creates a [CachedNetworkPdfViewer].
  ///
  /// The [url] and [onPageChange] parameters are required.
  const CachedNetworkPdfViewer({
    super.key,
    required this.url,
    this.onPageChange,
    this.progressIndicator,
    this.errorIndicator,
    this.onViewCreated,
    this.onRender,
    this.onPageChanged,
    this.onError,
    this.onPageError,
    this.onLinkHandler,
    this.gestureRecognizers,
    this.password,
    this.backgroundColor,
    this.swipeHorizontal = false,
    this.enableSwipe = true,
    this.nightMode = false,
    this.autoSpacing = true,
    this.pageFling = true,
    this.pageSnap = true,
    this.fitEachPage = true,
    this.defaultPage = 0,
    this.fitPolicy = FitPolicy.WIDTH,
    this.preventLinkNavigation = false,
    this.headers,
    this.cacheKey,
    this.stalePeriod = const Duration(days: 7),
    this.maxNoOfFile = 20,
  });

  /// The network URL of the PDF file to be displayed.
  final String url;

  /// Callback triggered when the current page changes.
  final PageChangedCallback? onPageChange;

  /// Widget displayed while the PDF file is being downloaded.
  final Widget? progressIndicator;

  /// Widget displayed when the PDF fails to load.
  final Widget? errorIndicator;

  /// Callback triggered when the PDF view is created.
  final PDFViewCreatedCallback? onViewCreated;

  /// Callback triggered when the PDF is rendered.
  final RenderCallback? onRender;

  /// Callback triggered when a page is changed.
  final PageChangedCallback? onPageChanged;

  /// Callback triggered when an error occurs.
  final ErrorCallback? onError;

  /// Callback triggered when a specific page fails to render.
  final PageErrorCallback? onPageError;

  /// Callback triggered when a link inside the PDF is clicked.
  final LinkHandlerCallback? onLinkHandler;

  /// Gesture recognizers used by the PDF viewer.
  final Set<Factory<OneSequenceGestureRecognizer>>? gestureRecognizers;

  /// Whether to enable swipe gestures for changing pages.
  final bool enableSwipe;

  /// Whether pages should be swiped horizontally instead of vertically.
  final bool swipeHorizontal;

  /// Optional password for opening encrypted PDF files.
  final String? password;

  /// Enables night mode, displaying the PDF with inverted colors.
  final bool nightMode;

  /// Whether to automatically add spacing between pages.
  final bool autoSpacing;

  /// Whether to enable page flinging gestures.
  final bool pageFling;

  /// Whether to snap to pages after a fling gesture.
  final bool pageSnap;

  /// Whether each page should fit individually in the viewport.
  final bool fitEachPage;

  /// The initial page to open when the PDF is first displayed.
  final int defaultPage;

  /// Policy defining how pages should fit within the view (width, height, etc.).
  final FitPolicy fitPolicy;

  /// Whether to prevent navigation when tapping PDF links.
  final bool preventLinkNavigation;

  /// Background color for the PDF view.
  final Color? backgroundColor;

  /// Optional HTTP headers to include in the PDF download request.
  final Map<String, String>? headers;

  /// Custom cache key for identifying the cached PDF file.
  final String? cacheKey;

  /// The duration for which a cached file remains valid.
  final Duration stalePeriod;

  /// The maximum number of files to store in cache.
  final int maxNoOfFile;

  @override
  State<CachedNetworkPdfViewer> createState() => _CachedNetworkPdfViewerState();
}

/// Internal state class for [CachedNetworkPdfViewer].
///
/// Handles downloading, caching, and displaying the PDF file.
class _CachedNetworkPdfViewerState extends State<CachedNetworkPdfViewer> {
  /// Local file path of the cached or downloaded PDF.
  String? localPath;

  /// Whether the widget is currently loading the PDF.
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadPdf();
  }

  /// Downloads or retrieves the PDF file from cache.
  ///
  /// Uses [flutter_cache_manager] to fetch the file and store it locally.
  /// Once loaded, updates the [localPath] and stops the loading indicator.
  Future<void> _loadPdf() async {
    try {
      final cacheManager = CacheManager(
        Config(
          widget.cacheKey ?? 'com.gtirkha.cached_network_pdf_view',
          stalePeriod: widget.stalePeriod,
          maxNrOfCacheObjects: widget.maxNoOfFile,
        ),
      );

      final file = await cacheManager.getSingleFile(
        widget.url,
        headers: widget.headers,
        key: widget.cacheKey,
      );

      setState(() {
        localPath = file.path;
        isLoading = false;
      });
    } catch (e) {
      log(e.toString(), name: 'CachedNetworkPdfViewer');
      widget.onError?.call(e);
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Display progress indicator while loading
    if (isLoading) {
      return widget.progressIndicator ??
          const Center(child: CircularProgressIndicator());
    }

    // Display error indicator if loading fails
    if (localPath == null) {
      return widget.errorIndicator ??
          const Center(child: Text('Unable To Load PDF'));
    }

    // Display the cached or downloaded PDF file
    return PDFView(
      filePath: localPath,
      onViewCreated: widget.onViewCreated,
      onRender: widget.onRender,
      onPageChanged: widget.onPageChanged,
      onError: widget.onError,
      onPageError: widget.onPageError,
      onLinkHandler: widget.onLinkHandler,
      gestureRecognizers: widget.gestureRecognizers,
      enableSwipe: widget.enableSwipe,
      swipeHorizontal: widget.swipeHorizontal,
      password: widget.password,
      nightMode: widget.nightMode,
      autoSpacing: widget.autoSpacing,
      pageFling: widget.pageFling,
      pageSnap: widget.pageSnap,
      fitEachPage: widget.fitEachPage,
      defaultPage: widget.defaultPage,
      fitPolicy: widget.fitPolicy,
      preventLinkNavigation: widget.preventLinkNavigation,
      backgroundColor: widget.backgroundColor,
    );
  }
}
