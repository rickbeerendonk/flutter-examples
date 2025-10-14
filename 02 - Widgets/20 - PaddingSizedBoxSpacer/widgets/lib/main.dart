import 'package:flutter/widgets.dart';

void main() {
  runApp(
    Row(
      children: const [
        Placeholder(fallbackWidth: 24, fallbackHeight: 24),
        SizedBox(width: 8),
        Expanded(child: Text('Search...')),
        Spacer(),
        Placeholder(fallbackWidth: 24, fallbackHeight: 24),
      ],
    ),
  );
}
