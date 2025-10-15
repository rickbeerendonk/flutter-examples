import 'package:flutter/widgets.dart';

void main() => runApp(const Greeting(name: 'World'));

class Greeting extends StatelessWidget {
  final String name;
  const Greeting({required this.name, super.key});
  @override
  Widget build(BuildContext context) {
    return Text('Hello, $name!', textDirection: TextDirection.ltr);
  }
}
