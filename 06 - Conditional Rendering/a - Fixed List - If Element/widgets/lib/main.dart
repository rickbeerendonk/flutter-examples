// European Union Public License version 1.2
// Copyright © 2025 Rick Beerendonk

import 'package:flutter/widgets.dart';

void main() {
  final bool onlyOdd = true;

  runApp(
    Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        // Using map to transform each number into a Text widget.
        children: [
          if (onlyOdd) Text('one'),
          if (!onlyOdd) Text('two'),
          if (onlyOdd) Text('three'),
          if (!onlyOdd) Text('four'),
          if (onlyOdd) Text('five'),
          if (!onlyOdd) Text('six')
        ],
      ),
    ),
  );
}
