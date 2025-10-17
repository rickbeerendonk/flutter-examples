/*! European Union Public License version 1.2 !*/
/*! Copyright © 2025 Rick Beerendonk          !*/

import 'package:flutter/widgets.dart';

class ColorInheritedWidget extends InheritedWidget {
  final Color color;

  const ColorInheritedWidget({
    super.key,
    required this.color,
    required super.child,
  });

  static ColorInheritedWidget? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ColorInheritedWidget>();
  }

  static ColorInheritedWidget of(BuildContext context) {
    final ColorInheritedWidget? result = maybeOf(context);
    assert(result != null, 'No ColorInheritedWidget found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ColorInheritedWidget oldWidget) {
    return color != oldWidget.color;
  }
}
