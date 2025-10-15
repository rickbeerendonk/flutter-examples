// European Union Public License version 1.2
// Copyright © 2025 Rick Beerendonk

import 'package:flutter/widgets.dart';

void main() {
  final List<String> numbers = ['one', 'two', 'three', 'four', 'five', 'six'];

  runApp(
    Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        // Using map to transform each number into a Text widget.
        children: numbers
            .where((number) => number.length > 3) // Conditional filtering
            .map((number) => Text('Item $number'))
            .toList(),
      ),
    ),
  );
}
