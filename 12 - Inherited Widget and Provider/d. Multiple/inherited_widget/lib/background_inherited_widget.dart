/*! European Union Public License version 1.2 !*/
/*! Copyright © 2025 Rick Beerendonk          !*/

import 'package:flutter/widgets.dart';

class BackgroundInheritedWidget extends InheritedWidget {
  final Color background;

  const BackgroundInheritedWidget({
    super.key,
    required this.background,
    required super.child,
  });

  static BackgroundInheritedWidget? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<BackgroundInheritedWidget>();
  }

  static BackgroundInheritedWidget of(BuildContext context) {
    final BackgroundInheritedWidget? result = maybeOf(context);
    assert(result != null, 'No BackgroundInheritedWidget found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(BackgroundInheritedWidget oldWidget) {
    return background != oldWidget.background;
  }
}
