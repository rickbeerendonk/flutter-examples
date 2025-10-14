import 'package:flutter/widgets.dart';

void main() {
  runApp(const Hello());
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Hello'));
  }
}
