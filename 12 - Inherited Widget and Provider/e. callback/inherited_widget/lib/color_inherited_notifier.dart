/*! European Union Public License version 1.2 !*/
/*! Copyright © 2025 Rick Beerendonk          !*/

import 'package:flutter/widgets.dart';

import 'color_notifier.dart';

class ColorInheritedNotifier extends InheritedNotifier<ColorNotifier> {
  const ColorInheritedNotifier({
    super.key,
    required ColorNotifier super.notifier,
    required super.child,
  });

  static ColorInheritedNotifier? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ColorInheritedNotifier>();
  }

  static ColorInheritedNotifier of(BuildContext context) {
    final ColorInheritedNotifier? result = maybeOf(context);
    assert(result != null, 'No ColorInheritedNotifier found in context');
    return result!;
  }
}
