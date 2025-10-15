import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      // MaterialApp is a convenience widget that wraps a number of widgets
      // that are commonly required for material design applications.
      home: Scaffold(
    // Scaffold provides a framework that implements the basic
    // material design visual layout structure.
    body: Column(
      children: [
        // ElevatedButton is a Material Design elevated button.
        // TextButton is a Material Design text button.
        // IconButton is a Material Design icon button.
        ElevatedButton(onPressed: () {}, child: const Text('Save')),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.share),
          label: const Text('Share'),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
      ],
    ),
  )));
}
