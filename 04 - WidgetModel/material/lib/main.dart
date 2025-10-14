// European Union Public License version 1.2
// Copyright © 2020 Rick Beerendonk

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Hello()));
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Hello Flutter!'));
  }
}
