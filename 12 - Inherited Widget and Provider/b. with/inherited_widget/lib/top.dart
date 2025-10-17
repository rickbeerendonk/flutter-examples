/*! European Union Public License version 1.2 !*/
/*! Copyright © 2025 Rick Beerendonk          !*/

import 'package:flutter/widgets.dart';

import 'color_inherited_widget.dart';
import 'middle.dart';

class Top extends StatelessWidget {
  final Color color;

  const Top({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return ColorInheritedWidget(color: color, child: const Middle());
  }
}
