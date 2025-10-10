
## ✓ Follow Dart file conventions (30 / 30)
### [*] 10/10 points: Provide a valid `pubspec.yaml`

### [*] 5/5 points: Provide a valid `README.md`

### [*] 5/5 points: Provide a valid `CHANGELOG.md`

### [*] 10/10 points: Use an OSI-approved license

Detected license: `MIT`.


## ✓ Provide documentation (20 / 20)
### [*] 10/10 points: 20% or more of the public API has dartdoc comments

31 out of 31 API elements (100.0 %) have documentation comments.

### [*] 10/10 points: Package has an example


## ✓ Platform support (20 / 20)
### [*] 20/20 points: Supports 2 of 6 possible platforms (**iOS**, **Android**, Web, Windows, macOS, Linux)

* ✓ Android

* ✓ iOS


These platforms are not supported:

<details>
<summary>
Package does not support platform `Windows`.
</summary>

Because:
* `package:cached_network_pdf_view/cached_network_pdf_view.dart` that imports:
* `package:cached_network_pdf_view/src/cached_network_pdf_view.dart` that imports:
* `package:flutter_pdfview/flutter_pdfview.dart` that declares support for platforms: `Android`, `iOS`.
</details>

<details>
<summary>
Package does not support platform `Linux`.
</summary>

Because:
* `package:cached_network_pdf_view/cached_network_pdf_view.dart` that imports:
* `package:cached_network_pdf_view/src/cached_network_pdf_view.dart` that imports:
* `package:flutter_pdfview/flutter_pdfview.dart` that declares support for platforms: `Android`, `iOS`.
</details>

<details>
<summary>
Package does not support platform `macOS`.
</summary>

Because:
* `package:cached_network_pdf_view/cached_network_pdf_view.dart` that imports:
* `package:cached_network_pdf_view/src/cached_network_pdf_view.dart` that imports:
* `package:flutter_pdfview/flutter_pdfview.dart` that declares support for platforms: `Android`, `iOS`.
</details>

<details>
<summary>
Package does not support platform `Web`.
</summary>

Because:
* `package:cached_network_pdf_view/cached_network_pdf_view.dart` that imports:
* `package:cached_network_pdf_view/src/cached_network_pdf_view.dart` that imports:
* `package:flutter_pdfview/flutter_pdfview.dart` that declares support for platforms: `Android`, `iOS`.
</details>

### [x] 0/0 points: WASM compatibility

<details>
<summary>
Package not compatible with runtime wasm
</summary>

Because:
* `package:cached_network_pdf_view/cached_network_pdf_view.dart` that imports:
* `package:cached_network_pdf_view/src/cached_network_pdf_view.dart` that imports:
* `package:flutter_cache_manager/flutter_cache_manager.dart` that imports:
* `package:flutter_cache_manager/src/web/web_helper.dart` that imports:
* `package:flutter_cache_manager/src/cache_store.dart` that imports:
* `dart:io`
</details>

This package is not compatible with runtime `wasm`, and will not be rewarded full points in a future version of the scoring model.

See https://dart.dev/web/wasm for details.


## ✓ Pass static analysis (50 / 50)
### [*] 50/50 points: code has no errors, warnings, lints, or formatting issues


## ✓ Support up-to-date dependencies (40 / 40)
### [*] 10/10 points: All of the package dependencies are supported in the latest version

|Package|Constraint|Compatible|Latest|Notes|
|:-|:-|:-|:-|:-|
|[`flutter_cache_manager`]|`^3.4.1`|3.4.1|3.4.1||
|[`flutter_pdfview`]|`^1.4.3`|1.4.3|1.4.3||

<details><summary>Transitive dependencies</summary>

|Package|Constraint|Compatible|Latest|Notes|
|:-|:-|:-|:-|:-|
|[`async`]|-|2.13.0|2.13.0||
|[`characters`]|-|1.4.0|1.4.1||
|[`clock`]|-|1.1.2|1.1.2||
|[`collection`]|-|1.19.1|1.19.1||
|[`crypto`]|-|3.0.6|3.0.6||
|[`ffi`]|-|2.1.4|2.1.4||
|[`file`]|-|7.0.1|7.0.1||
|[`fixnum`]|-|1.1.1|1.1.1||
|[`http`]|-|1.5.0|1.5.0||
|[`http_parser`]|-|4.1.2|4.1.2||
|[`material_color_utilities`]|-|0.11.1|0.13.0||
|[`meta`]|-|1.16.0|1.17.0||
|[`path`]|-|1.9.1|1.9.1||
|[`path_provider`]|-|2.1.5|2.1.5||
|[`path_provider_android`]|-|2.2.19|2.2.19||
|[`path_provider_foundation`]|-|2.4.2|2.4.2||
|[`path_provider_linux`]|-|2.2.1|2.2.1||
|[`path_provider_platform_interface`]|-|2.1.2|2.1.2||
|[`path_provider_windows`]|-|2.3.0|2.3.0||
|[`platform`]|-|3.1.6|3.1.6||
|[`plugin_platform_interface`]|-|2.1.8|2.1.8||
|[`rxdart`]|-|0.28.0|0.28.0||
|[`source_span`]|-|1.10.1|1.10.1||
|[`sprintf`]|-|7.0.0|7.0.0||
|[`sqflite`]|-|2.4.2|2.4.2||
|[`sqflite_android`]|-|2.4.2+2|2.4.2+2||
|[`sqflite_common`]|-|2.5.6|2.5.6||
|[`sqflite_darwin`]|-|2.4.2|2.4.2||
|[`sqflite_platform_interface`]|-|2.4.0|2.4.0||
|[`string_scanner`]|-|1.4.1|1.4.1||
|[`synchronized`]|-|3.4.0|3.4.0||
|[`term_glyph`]|-|1.2.2|1.2.2||
|[`typed_data`]|-|1.4.0|1.4.0||
|[`uuid`]|-|4.5.1|4.5.1||
|[`vector_math`]|-|2.2.0|2.2.0||
|[`web`]|-|1.1.1|1.1.1||
|[`xdg_directories`]|-|1.1.0|1.1.0||
</details>

To reproduce run `dart pub outdated --no-dev-dependencies --up-to-date --no-dependency-overrides`.

[`flutter_cache_manager`]: https://pub.dev/packages/flutter_cache_manager
[`flutter_pdfview`]: https://pub.dev/packages/flutter_pdfview
[`async`]: https://pub.dev/packages/async
[`characters`]: https://pub.dev/packages/characters
[`clock`]: https://pub.dev/packages/clock
[`collection`]: https://pub.dev/packages/collection
[`crypto`]: https://pub.dev/packages/crypto
[`ffi`]: https://pub.dev/packages/ffi
[`file`]: https://pub.dev/packages/file
[`fixnum`]: https://pub.dev/packages/fixnum
[`http`]: https://pub.dev/packages/http
[`http_parser`]: https://pub.dev/packages/http_parser
[`material_color_utilities`]: https://pub.dev/packages/material_color_utilities
[`meta`]: https://pub.dev/packages/meta
[`path`]: https://pub.dev/packages/path
[`path_provider`]: https://pub.dev/packages/path_provider
[`path_provider_android`]: https://pub.dev/packages/path_provider_android
[`path_provider_foundation`]: https://pub.dev/packages/path_provider_foundation
[`path_provider_linux`]: https://pub.dev/packages/path_provider_linux
[`path_provider_platform_interface`]: https://pub.dev/packages/path_provider_platform_interface
[`path_provider_windows`]: https://pub.dev/packages/path_provider_windows
[`platform`]: https://pub.dev/packages/platform
[`plugin_platform_interface`]: https://pub.dev/packages/plugin_platform_interface
[`rxdart`]: https://pub.dev/packages/rxdart
[`source_span`]: https://pub.dev/packages/source_span
[`sprintf`]: https://pub.dev/packages/sprintf
[`sqflite`]: https://pub.dev/packages/sqflite
[`sqflite_android`]: https://pub.dev/packages/sqflite_android
[`sqflite_common`]: https://pub.dev/packages/sqflite_common
[`sqflite_darwin`]: https://pub.dev/packages/sqflite_darwin
[`sqflite_platform_interface`]: https://pub.dev/packages/sqflite_platform_interface
[`string_scanner`]: https://pub.dev/packages/string_scanner
[`synchronized`]: https://pub.dev/packages/synchronized
[`term_glyph`]: https://pub.dev/packages/term_glyph
[`typed_data`]: https://pub.dev/packages/typed_data
[`uuid`]: https://pub.dev/packages/uuid
[`vector_math`]: https://pub.dev/packages/vector_math
[`web`]: https://pub.dev/packages/web
[`xdg_directories`]: https://pub.dev/packages/xdg_directories

### [*] 10/10 points: Package supports latest stable Dart and Flutter SDKs

### [*] 20/20 points: Compatible with dependency constraint lower bounds

`pub downgrade` does not expose any static analysis error.


Points: 160/160.
