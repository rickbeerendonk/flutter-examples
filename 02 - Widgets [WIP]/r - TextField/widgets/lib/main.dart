import 'package:flutter/material.dart';

void main() {
  final controller = TextEditingController();
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
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
