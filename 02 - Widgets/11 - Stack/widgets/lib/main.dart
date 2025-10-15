// European Union Public License version 1.2
// Copyright © 2025 Rick Beerendonk

import 'package:flutter/widgets.dart';

void main() {
  runApp(
    Directionality(
      textDirection: TextDirection.ltr,
      child: Stack(
        // Stack widget allows you to overlay multiple widgets on top of each other.
        // The first child is at the bottom, the last child is on top.
        alignment: Alignment.center,
        children: const [
          Text('1'),
          Text('2'),
          const Positioned(
            right: 50,
            top: 50,
            child: Text('3'),
          ),
        ],
      ),
    ),
  );
}
