/*! European Union Public License version 1.2 !*/
/*! Copyright © 2025 Rick Beerendonk          !*/

import 'package:flutter/widgets.dart';

import 'bottom.dart';

class Middle extends StatelessWidget {
  final Color color;

  const Middle({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Bottom(color: color);
  }
}
