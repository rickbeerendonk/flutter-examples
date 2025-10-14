import 'package:flutter/widgets.dart';

void main() {
  runApp(
    Stack(
      children: [
        Container(color: const Color(0xFFEEEEEE), width: 200, height: 100),
        const Positioned(right: 12, top: 12, child: Text('New')),
      ],
    ),
  );
}
