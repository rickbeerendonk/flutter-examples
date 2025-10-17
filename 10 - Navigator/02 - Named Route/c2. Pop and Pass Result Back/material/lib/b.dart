// European Union Public License version 1.2
// Copyright © 2025 Rick Beerendonk

import 'package:flutter/material.dart';

class B extends StatelessWidget {
  const B({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('B'),
            ElevatedButton(
              // Pop the current route off the stack
              onPressed: () => Navigator.of(context).pop('Hello from B'),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
