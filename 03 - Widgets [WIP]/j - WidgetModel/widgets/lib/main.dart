import 'package:flutter/widgets.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Hello'));
  }
}

void main() {
  runApp(const Hello());
}
