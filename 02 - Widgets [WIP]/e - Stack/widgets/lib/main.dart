import 'package:flutter/widgets.dart';

void main() {
  runApp(
    Stack(
      children: [
        Align(alignment: Alignment.center, child: Text('Stack')),
        Positioned(left: 10, top: 10, child: Icon(Icons.star)),
      ],
    ),
  );
}
