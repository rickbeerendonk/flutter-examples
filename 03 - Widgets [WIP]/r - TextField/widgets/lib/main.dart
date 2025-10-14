import 'package:flutter/material.dart';

void main() {
  final controller = TextEditingController();
  runApp(
    MaterialApp(
      // MaterialApp is a convenience widget that wraps a number of widgets
      // that are commonly required for material design applications.
      home: Scaffold(
        // Scaffold provides a framework that implements the basic
        // material design visual layout structure.
        body: Padding(
          // Padding widget adds padding around its child.
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            // TextField widget allows user to input text.
            controller: controller,
            decoration: const InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
      ),
    ),
  );
}
