// European Union Public License version 1.2
// Copyright © 2025 Rick Beerendonk

import 'package:flutter/material.dart';
import 'b.dart';

class A extends StatelessWidget {
  const A({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('A'),
        ElevatedButton(
          // Push a new route onto the stack
          // Anonymous route:
          // - No need to define it in advance
          // - No browser history entry is created
          // Use async/await to wait for the result
          onPressed: () async {
            // Wait for the result from B
            final result = await Navigator.of(context).push<String>(
              MaterialPageRoute(builder: (_) => const B()),
            );
            // Show the result in a SnackBar
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Result: $result')),
            );
          },
          child: const Text('Go to B'),
        ),
      ],
    )));
  }
}
