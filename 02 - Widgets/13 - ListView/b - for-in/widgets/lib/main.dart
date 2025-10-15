import 'package:flutter/widgets.dart';

void main() {
  const List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  runApp(
    Directionality(
      textDirection: TextDirection.ltr,
      child: ListView(children: [for (var item in items) Text(item)]),
    ),
  );
}
