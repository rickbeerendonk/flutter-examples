// European Union Public License version 1.2
// Copyright © 2025 Rick Beerendonk

import 'package:flutter/widgets.dart';

void main() {
  runApp(
    Directionality(
      textDirection: TextDirection.ltr,
      child: Stack(
        alignment: Alignment.center,
        children: const [Text('1'), Text('2'), Text('3')],
      ),
    ),
  );
}
