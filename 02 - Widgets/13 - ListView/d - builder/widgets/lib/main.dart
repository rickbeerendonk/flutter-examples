import 'package:flutter/widgets.dart';

void main() {
  runApp(
    Directionality(
      textDirection: TextDirection.ltr,
      // ListView widget displays its children one after another in the scroll direction.
      // ListView.builder is a constructor that creates a scrollable, linear array of widgets
      // that are created on demand.
      // This is particularly useful for long lists or lists with dynamic content.
      // If you want fixed content, use ListView(children: [...]) instead.
      child: ListView.builder(
          itemCount: 3, itemBuilder: (context, i) => Text('Item ${i + 1}')),
    ),
  );
}
