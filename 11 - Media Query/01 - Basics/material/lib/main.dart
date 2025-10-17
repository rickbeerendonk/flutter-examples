// European Union Public License version 1.2
// Copyright © 2025 Rick Beerendonk

import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const MediaQueryScreen(),
    );
  }
}

class MediaQueryScreen extends StatelessWidget {
  const MediaQueryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get MediaQuery data
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQuery Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'Screen Size: Width = ${mediaQuery.size.width.toStringAsFixed(1)}px, Height = ${mediaQuery.size.height.toStringAsFixed(1)}px'),
            Text(
                'Orientation: ${mediaQuery.orientation == Orientation.portrait ? "Portrait" : "Landscape"}'),
            Text(
                'High Contrast: ${mediaQuery.highContrast ? "Enabled" : "Disabled"}'),
            Text(
                'Platform Brightness: ${mediaQuery.platformBrightness == Brightness.dark ? "Dark" : "Light"}'),
          ],
        ),
      ),
    );
  }
}
