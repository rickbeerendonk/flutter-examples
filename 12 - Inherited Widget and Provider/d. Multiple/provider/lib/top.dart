/*! European Union Public License version 1.2 !*/
/*! Copyright © 2025 Rick Beerendonk          !*/

import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'color_data.dart';
import 'background_data.dart';
import 'middle.dart';

class Top extends StatelessWidget {
  const Top({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<ColorData>(
      create: (_) => const ColorData(color: Color(0xFFFF0000)), // red
      child: Provider<BackgroundData>(
        create: (_) =>
            const BackgroundData(background: Color(0xFFFFFF00)), // yellow
        child: const Middle(),
      ),
    );
  }
}
