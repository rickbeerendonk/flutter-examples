// European Union Public License version 1.2
// Copyright © 2025 Rick Beerendonk

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Define a custom theme class
class MyTheme {
  final Color primaryColor;
  final Color backgroundColor;
  final TextStyle textStyle;

  const MyTheme({
    required this.primaryColor,
    required this.backgroundColor,
    required this.textStyle,
  });
}

// Create an InheritedWidget to provide theme down the widget tree
class ThemeProvider extends InheritedWidget {
  final MyTheme theme;

  const ThemeProvider({
    Key? key,
    required this.theme,
    required Widget child,
  }) : super(key: key, child: child);

  static MyTheme of(BuildContext context) {
    final ThemeProvider? result =
        context.dependOnInheritedWidgetOfExactType<ThemeProvider>();
    assert(result != null, 'No ThemeProvider found in context');
    return result!.theme;
  }

  @override
  bool updateShouldNotify(ThemeProvider oldWidget) {
    return theme != oldWidget.theme;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: const Color(0xFFFFFFFF),
      // The builder is called to build the widget tree
      builder: (context, child /* not used */) {
        return ThemeProvider(
          // Provide a custom theme
          theme: const MyTheme(
            primaryColor: Color(0xFF2196F3),
            backgroundColor: Color(0xFFCCCCCC),
            textStyle: TextStyle(
              color: Color(0xFF2196F3),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: ThemedContent(),
        );
      },
    );
  }
}

class ThemedContent extends StatelessWidget {
  const ThemedContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = ThemeProvider.of(context);

    return Container(
      color: theme.backgroundColor,
      child: Center(
        child: Text(
          'Hello Flutter!',
          style: theme.textStyle,
        ),
      ),
    );
  }
}
