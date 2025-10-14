import 'package:flutter/material.dart';

void main() {
  runApp(
    Column(
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
  );
}
