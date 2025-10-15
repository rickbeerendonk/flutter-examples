// European Union Public License version 1.2
// Copyright © 2025 Rick Beerendonk

import 'package:flutter/material.dart';

class EditBox extends StatefulWidget {
  // Callback to notify parent of changes
  final ValueChanged<String> onChange;

  // Constructor
  const EditBox({super.key, required this.onChange});

  // Create the state
  @override
  State<EditBox> createState() => _EditBoxState();
}

class _EditBoxState extends State<EditBox> {
  // Controller to manage the text field
  late final TextEditingController _controller;

  // Initialize the controller with the initial value
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: 'World');
  }

  // Dispose of the controller when the widget is removed
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      onChanged: widget.onChange,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Name',
      ),
    );
  }
}
