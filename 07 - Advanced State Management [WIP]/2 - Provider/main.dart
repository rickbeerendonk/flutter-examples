import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter with ChangeNotifier {
  int value = 0;
  void increment() {
    value++;
    notifyListeners();
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => Counter(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final counter = context.watch<Counter>();
    return Column(
      children: [
        Text('Value: ${counter.value}'),
        ElevatedButton(
          onPressed: () => context.read<Counter>().increment(),
          child: const Text('Increment'),
        ),
      ],
    );
  }
}
