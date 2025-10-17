/*! European Union Public License version 1.2 !*/
/*! Copyright © 2025 Rick Beerendonk          !*/

import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'color_data.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    final colorData = context.read<ColorData>();

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Text(
        'Bottom',
        style: TextStyle(
          color: colorData.color,
          fontSize: 48,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
