// European Union Public License version 1.2
// Copyright © 2025 Rick Beerendonk

import 'package:flutter/widgets.dart';

void main() {
  final List<String> numbers = ['1', '2', '3'];

  runApp(
    Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        // Using map to transform each number into a Text widget.
        children: numbers.map((number) => Text('Item $number')).toList(),
      ),
    ),
  );
}
