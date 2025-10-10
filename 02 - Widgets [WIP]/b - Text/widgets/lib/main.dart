// European Union Public License version 1.2
// Copyright © 2025 Rick Beerendonk

import 'package:flutter/widgets.dart';

void main() {
  // Text widget:
  // - Displays a string of text with single style
  // - Requires a TextDirection (ltr or rtl)
  // - For more advanced text, use RichText widget
  runApp(Text('Hello Flutter!', textDirection: TextDirection.ltr));
}
