import 'package:flutter/material.dart';

void main() {
  runApp(
    GestureDetector(
      onTap: () => debugPrint('Tapped!'),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(Icons.touch_app),
      ),
    ),
  );
}
