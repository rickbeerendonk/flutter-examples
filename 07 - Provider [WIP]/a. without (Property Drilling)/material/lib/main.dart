// European Union Public License version 1.2
// Copyright © 2025 Rick Beerendonk

import 'package:flutter/material.dart';

void main() {
  runApp(Top(color: Colors.red));
}

class Top extends StatelessWidget {
  final Color color;
  const Top({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Middle(color: color);
  }
}

class Middle extends StatelessWidget {
  final Color color;
  const Middle({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Bottom(color: color);
  }
}

class Bottom extends StatelessWidget {
  final Color color;
  const Bottom({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Bottom',
      style: TextStyle(color: color),
      textDirection: TextDirection.ltr,
    );
  }
}
