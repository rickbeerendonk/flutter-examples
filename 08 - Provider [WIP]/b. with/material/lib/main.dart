// European Union Public License version 1.2
// Copyright © 2025 Rick Beerendonk

import 'package:flutter/material.dart';

void main() {
  runApp(Top(color: Colors.red));
}

/// An InheritedWidget that holds a [color] value.
/// If no provider is found, widgets will fall back to [Colors.orange]
class ColorProvider extends InheritedWidget {
  final Color color;

  const ColorProvider({super.key, required this.color, required super.child});

  static Color of(BuildContext context) {
    final provider = context
        .dependOnInheritedWidgetOfExactType<ColorProvider>();
    return provider?.color ?? Colors.orange;
  }

  @override
  bool updateShouldNotify(covariant ColorProvider oldWidget) {
    return oldWidget.color != color;
  }
}

class Top extends StatelessWidget {
  final Color color;
  const Top({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    // Wrap children with ColorProvider
    return ColorProvider(color: color, child: const Middle());
  }
}

/// Middle does not need to know about color
class Middle extends StatelessWidget {
  const Middle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Bottom();
  }
}

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve color from ColorProvider
    final color = ColorProvider.of(context);

    return Text(
      'Bottom',
      style: TextStyle(color: color),
      textDirection: TextDirection.ltr,
    );
  }
}
