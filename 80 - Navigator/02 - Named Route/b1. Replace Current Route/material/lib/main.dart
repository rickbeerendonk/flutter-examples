// European Union Public License version 1.2
// Copyright © 2025 Rick Beerendonk

import 'package:flutter/material.dart';
import 'a.dart';
import 'b.dart';

void main() {
  runApp(
      // Named routes:
      // - Need to define them in advance
      // - Browser history entry is created
      // Use the routes table to define the routes
      // Use Navigator.pushNamed to navigate to a named route
      MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (_) => const A(),
      '/b': (_) => const B(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: A());
  }
}
