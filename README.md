# 📘 Cached Network PDF View

A Flutter widget to view and cache PDF files from network URLs using `flutter_cache_manager` and `flutter_pdfview`.  
Supports offline access, custom indicators, gestures, and night mode.

---

## 🚀 Features

- 🔄 Automatically caches downloaded PDFs for offline use  
- ⚡ Fast native PDF rendering  
- 💾 Custom cache duration and file limits  
- 📱 Vertical or horizontal swiping  
- 🌙 Night mode support  
- 🧩 Callbacks for render, page change, and errors  
- 🛠️ Customizable progress and error widgets  

---

## 📦 Installation

Add the following line to your `pubspec.yaml`:

```yaml
dependencies:
  cached_network_pdf_view: ^1.0.0
```

then run

```
flutter pub get
```

# 🧩 Usage Example

```dart
import 'package:flutter/material.dart';
import 'package:cached_network_pdf_view/cached_network_pdf_view.dart';

class PdfExamplePage extends StatelessWidget {
  const PdfExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PDF Viewer Example')),
      body: CachedNetworkPdfViewer(
        url: 'https://www.adobe.com/support/products/enterprise/knowledgecenter/media/c4611_sample_explain.pdf',
        onPageChange: (page, total) {
          debugPrint('Page changed: $page/$total');
        },
        progressIndicator: const Center(child: CircularProgressIndicator()),
        errorIndicator: const Center(child: Text('Failed to load PDF')),
      ),
    );
  }
}
```

## ⚙️ Parameters

| Parameter           | Type                  | Description                   |
| ------------------- | --------------------- | ----------------------------- |
| `url`               | `String`              | Network URL of the PDF file   |
| `onPageChange`      | `PageChangedCallback` | Called when the page changes  |
| `progressIndicator` | `Widget?`             | Widget shown while loading    |
| `errorIndicator`    | `Widget?`             | Widget shown if loading fails |
| `nightMode`         | `bool`                | Enables dark background mode  |
| `enableSwipe`       | `bool`                | Enables swipe navigation      |
| `swipeHorizontal`   | `bool`                | Switches swipe direction      |
| `cacheKey`          | `String?`             | Custom cache key for PDF file |
| `stalePeriod`       | `Duration`            | Cache lifetime                |
| `maxNoOfFile`       | `int`                 | Max number of cached PDFs     |


## 📄 License

MIT License
See [LICENSE](LICENSE) for details.

---

## 💙 Credits

* [flutter_pdfview](https://pub.dev/packages/flutter_pdfview)
* [flutter_cache_manager](https://pub.dev/packages/flutter_cache_manager)

---
