import 'package:flutter/material.dart';

void main() {
  runApp(
    Column(
      children: [
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
