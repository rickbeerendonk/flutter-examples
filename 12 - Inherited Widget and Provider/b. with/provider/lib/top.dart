/*! European Union Public License version 1.2 !*/
/*! Copyright © 2025 Rick Beerendonk          !*/

import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'color_data.dart';
import 'middle.dart';

class Top extends StatelessWidget {
  final Color color;

  const Top({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Provider<ColorData>(
      create: (_) => ColorData(color: color),
      child: const Middle(),
    );
  }
}
