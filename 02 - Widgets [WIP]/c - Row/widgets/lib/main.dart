import 'package:flutter/widgets.dart';

void main() {
  runApp(
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text('Row'), SizedBox(width: 16), Icon(Icons.star)],
    ),
  );
}
