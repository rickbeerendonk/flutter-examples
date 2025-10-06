import 'package:flutter/material.dart';

void main() {
  runApp(
    ListView.builder(
      itemCount: 3,
      itemBuilder: (context, i) => ListTile(
        leading: CircleAvatar(child: Text('${i + 1}')),
        title: Text('Item {i+1}'),
      ),
    ),
  );
}
