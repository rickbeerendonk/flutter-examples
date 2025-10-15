import 'package:flutter/widgets.dart';

void main() {
  const List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  runApp(
    Directionality(
      textDirection: TextDirection.ltr,
      // ListView widget displays its children one after another in the scroll direction.
      // ListView.builder is a constructor that creates a scrollable, linear array of widgets
      // that are created on demand.
      // This is particularly useful for long lists or lists with dynamic content.
      child: ListView(
        //children: [Text('Item1'), Text('Item2'), Text('Item3'), Text('Item4')],
        children: items.map((item) => Text(item)).toList(),
      ),
    ),
  );
}
