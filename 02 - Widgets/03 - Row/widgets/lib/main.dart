// European Union Public License version 1.2
// Copyright © 2025 Rick Beerendonk

import 'package:flutter/widgets.dart';

void main() {
  runApp(
    Directionality(
      textDirection: TextDirection.ltr,
      child: Row(
        // Row widget arranges its children horizontally.
        // Main axis is horizontal, cross axis is vertical.
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [Text('1'), Text('2'), Text('3')],
      ),
    ),
  );
}
