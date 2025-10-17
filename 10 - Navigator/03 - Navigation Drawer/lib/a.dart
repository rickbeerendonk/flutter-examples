// European Union Public License version 1.2
// Copyright © 2025 Rick Beerendonk

import 'package:flutter/material.dart';

class A extends StatelessWidget {
  const A({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar will show a back button automatically
      appBar: AppBar(title: const Text('Page A')),
      body: const Center(child: Text('A')),
    );
  }
}
