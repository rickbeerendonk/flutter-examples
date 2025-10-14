import 'package:flutter/material.dart';

void main() {
  runApp(
    // ListView widget displays its children one after another in the scroll direction.
    // ListView.builder is a constructor that creates a scrollable, linear array of widgets
    // that are created on demand.
    // This is particularly useful for long lists or lists with dynamic content.
    // If you want fixed content, use ListView(children: [...]) instead.
    ListView.builder(
      itemCount: 3,
      itemBuilder: (context, i) => ListTile(
        leading: CircleAvatar(child: Text('${i + 1}')),
        title: Text('Item ${i + 1}'),
      ),
    ),
  );
}
