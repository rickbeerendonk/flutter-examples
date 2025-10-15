// European Union Public License version 1.2
// Copyright © 2025 Rick Beerendonk

import 'package:flutter/widgets.dart';

import 'edit_box.dart';
import 'greeting.dart';

class GreetingEditor extends StatefulWidget {
  const GreetingEditor({super.key});

  @override
  State<GreetingEditor> createState() => _GreetingEditorState();
}

class _GreetingEditorState extends State<GreetingEditor> {
  String _name = '';

  void _handleChange(String newName) {
    setState(() {
      _name = newName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        EditBox(onChange: _handleChange),
        const SizedBox(height: 16),
        Greeting(name: _name),
      ],
    );
  }
}
