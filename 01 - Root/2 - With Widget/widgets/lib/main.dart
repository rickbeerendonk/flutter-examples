// European Union Public License version 1.2
// Copyright © 2025 Rick Beerendonk

import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetsApp(
      color: const Color(0xFFFFFFFF),
      builder: (context, child) {
        return const Directionality(
          textDirection: TextDirection.ltr,
          child: Center(child: Text('Hello Flutter!')),
        );
      },
    );
  }
}
