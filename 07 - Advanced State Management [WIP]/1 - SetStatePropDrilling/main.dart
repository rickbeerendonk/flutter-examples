import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatefulWidget {
  const App({super.key});
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;
  void increment() => setState(() => counter++);
  @override
  Widget build(BuildContext context) {
    return ScreenA(counter: counter, increment: increment);
  }
}

class ScreenA extends StatelessWidget {
  final int counter;
  final VoidCallback increment;
  const ScreenA({required this.counter, required this.increment, super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Counter: $counter'),
        ElevatedButton(onPressed: increment, child: const Text('Increment')),
      ],
    );
  }
}
