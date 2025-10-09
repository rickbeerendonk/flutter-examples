// European Union Public License version 1.2
// Copyright © 2025 Rick Beerendonk

import 'package:flutter/material.dart';

class EditBox extends StatefulWidget {
  final ValueChanged<String> onChange;
  final String value;

  const EditBox({super.key, required this.onChange, required this.value});

  @override
  State<EditBox> createState() => _EditBoxState();
}

class _EditBoxState extends State<EditBox> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.value);
  }

  @override
  void didUpdateWidget(covariant EditBox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value && _controller.text != widget.value) {
      _controller.text = widget.value;
    }
  }

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
