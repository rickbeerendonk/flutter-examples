// European Union Public License version 1.2
// Copyright © 2025 Rick Beerendonk

import 'package:flutter/material.dart';

class B extends StatelessWidget {
  const B({super.key});

  @override
  Widget build(BuildContext context) {
    // ModalRoute is used to access the current route's settings
    // Extract the arguments passed to this route
    final args = ModalRoute.of(context)!.settings.arguments as String?;
    return Scaffold(
      body: Center(child: Text('B (arguments="$args")')),
    );
  }
}
