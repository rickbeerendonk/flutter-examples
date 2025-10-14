import 'package:flutter/material.dart';

void main() {
  runApp(
    // GestureDetector widget detects gestures.
    // Here it detects a tap gesture.
    // Other gestures include:
    // onDoubleTap, onLongPress, onPanUpdate, onScaleUpdate, etc.
    GestureDetector(
      onTap: () => debugPrint('Tapped!'),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(Icons.touch_app),
      ),
    ),
  );
}
