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
          // Named route:
          // - Need to define it in advance
          // - Browser history entry is created
          onPressed: () async {
            final result = await Navigator.of(context).pushNamed('/b');
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Result from B: $result')),
            );
          },
          child: const Text('Go to B'),
        ),
      ],
    )));
  }
}
