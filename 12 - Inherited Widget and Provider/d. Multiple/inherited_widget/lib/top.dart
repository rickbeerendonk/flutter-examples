/*! European Union Public License version 1.2 !*/
/*! Copyright © 2025 Rick Beerendonk          !*/

import 'package:flutter/widgets.dart';

import 'color_inherited_widget.dart';
import 'background_inherited_widget.dart';
import 'middle.dart';

class Top extends StatelessWidget {
  const Top({super.key});

  @override
  Widget build(BuildContext context) {
    return ColorInheritedWidget(
      color: const Color(0xFFFF0000), // red
      child: BackgroundInheritedWidget(
        background: const Color(0xFFFFFF00), // yellow
        child: const Middle(),
      ),
    );
  }
}
