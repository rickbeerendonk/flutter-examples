// European Union Public License version 1.2
// Copyright © 2025 Rick Beerendonk

import 'package:flutter/widgets.dart';

void main() {
  runApp(
    // Image widget displays an image.
    // Image should be registered in pubspec.yaml
    // Image should be placed in assets/images/
    Image.asset(
      './assets/images/Oblicum-logo-400.png',
      width: 200,
      height: 200,
    ),
  );
}
