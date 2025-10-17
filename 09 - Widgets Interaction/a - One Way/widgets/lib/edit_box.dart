// European Union Public License version 1.2
// Copyright © 2025 Rick Beerendonk

import 'package:flutter/widgets.dart';

class EditBox extends StatefulWidget {
  final ValueChanged<String> onChange;

  const EditBox({super.key, required this.onChange});

  @override
  State<EditBox> createState() => _EditBoxState();
}

class _EditBoxState extends State<EditBox> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: 'World');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF888888)),
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: EditableText(
        controller: _controller,
        focusNode: _focusNode,
        style: const TextStyle(fontSize: 16, color: Color(0xFF000000)),
        cursorColor: const Color(0xFF000000),
        backgroundCursorColor: const Color(0xFFCCCCCC),
        textDirection: TextDirection.ltr,
        onChanged: widget.onChange,
      ),
    );
  }
}
