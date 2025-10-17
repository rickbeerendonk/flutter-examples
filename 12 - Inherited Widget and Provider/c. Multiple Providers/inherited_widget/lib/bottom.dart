/*! European Union Public License version 1.2 !*/
/*! Copyright © 2025 Rick Beerendonk          !*/

import 'package:flutter/widgets.dart';

import 'color_inherited_widget.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    final colorWidget = ColorInheritedWidget.of(context);

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Text(
        'Bottom',
        style: TextStyle(
          color: colorWidget.color,
          fontSize: 48,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
