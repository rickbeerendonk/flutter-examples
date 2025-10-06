import 'package:flutter/widgets.dart';

void main() => runApp(const Demo());

class Demo extends StatelessWidget {
  const Demo({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Greeting(name: 'Alice'),
        CounterApp(),
      ],
    );
  }
}

class Greeting extends StatelessWidget {
  final String name;
  const Greeting({required this.name, super.key});
  @override
  Widget build(BuildContext context) {
    return Text('Hello, $name!', textDirection: TextDirection.ltr);
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});
  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;
  void _increment() => setState(() => _counter++);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Count: _counter', textDirection: TextDirection.ltr),
        TextButton(onPressed: _increment, child: const Text('Increment')),
      ],
    );
  }
}
