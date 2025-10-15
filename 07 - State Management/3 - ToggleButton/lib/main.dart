import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: const ToggleButton()));

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});
  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool _isOn = false;
  void _toggle() => setState(() => _isOn = !_isOn);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _toggle,
      child: Text(_isOn ? 'ON' : 'OFF'),
    );
  }
}
