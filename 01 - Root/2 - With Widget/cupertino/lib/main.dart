// European Union Public License version 1.2
// Copyright © 2020 Rick Beerendonk

import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(child: Text('Hello Flutter!')),
    );
  }
}
