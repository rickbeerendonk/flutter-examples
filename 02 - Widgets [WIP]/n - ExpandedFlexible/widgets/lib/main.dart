import 'package:flutter/widgets.dart';

void main() {
  runApp(
    Row(
      children: const [
        Expanded(child: Text('Takes all remaining space')),
        SizedBox(width: 12),
        Text('Fixed width'),
      ],
    ),
  );
}
