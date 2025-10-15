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
          onPressed: () =>
              // Replace A with B (no way back)
              // Real world example:
              // - After login, replace login screen with home screen
              // - After completing a task, replace task screen with result screen
              // - After submitting a form, replace form screen with confirmation screen
              // - After a payment, replace payment screen with receipt screen
              Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const B()),
          ),
          child: const Text('Go to B (replace A)'),
        ),
      ],
    )));
  }
}
