// European Union Public License version 1.2
// Copyright © 2025 Rick Beerendonk

import 'package:flutter/widgets.dart';

class Greeting extends StatelessWidget {
  final String name;

  const Greeting({
    Key? key,
    this.name = 'World',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello $name!',
    );
  }
}
