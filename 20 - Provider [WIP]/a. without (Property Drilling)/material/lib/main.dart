// European Union Public License version 1.2
// Copyright © 2020 Rick Beerendonk

import 'package:flutter/widgets.dart';

void main() => runApp(const Top(color: const Color(0xFFFF0000)));

class Top extends StatelessWidget {
  final Color color;
  const Top({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Middle(color: color);
  }
}

class Middle extends StatelessWidget {
  final Color color;
  const Middle({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Bottom(color: color);
  }
}

class Bottom extends StatelessWidget {
  final Color color;
  const Bottom({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Bottom',
      style: TextStyle(color: color),
      textDirection: TextDirection.ltr,
    );
  }
}
