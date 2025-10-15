// European Union Public License version 1.2
// Copyright © 2025 Rick Beerendonk

import 'package:flutter/widgets.dart';

void main() {
  runApp(
    // Container:
    // - Rectangular visual element
    // - With alignment, size, color, and child widget

    // Container is a combination of several widgets:
    // - Align: for alignment
    // - SizedBox: for size
    // - DecoratedBox: for color and decoration
    // - Center: for centering the child

    // Note: Container tries to be as big as its parent allows
    // If you want to limit the size, wrap it in a SizedBox or Constrained
    Container(
      alignment: Alignment.center,
      color: const Color.fromARGB(255, 124, 196, 254),
      width: 200,
      height: 200,
      child: const Text('Container', textDirection: TextDirection.ltr),
    ),
  );
}
