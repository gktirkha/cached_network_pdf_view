import 'package:cached_network_pdf_view/cached_network_pdf_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("CachedNetworkPdfViewer Example")),
        body: CachedNetworkPdfViewer(
          url:
              'https://www.adobe.com/support/products/enterprise/knowledgecenter/media/c4611_sample_explain.pdf',
        ),
      ),
    );
  }
}
