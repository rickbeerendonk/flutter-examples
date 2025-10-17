/*! European Union Public License version 1.2 !*/
/*! Copyright © 2025 Rick Beerendonk          !*/

import 'package:flutter/widgets.dart';

import 'color_notifier.dart';
import 'color_inherited_notifier.dart';
import 'middle.dart';

class Top extends StatefulWidget {
  const Top({super.key});

  @override
  State<Top> createState() => _TopState();
}

class _TopState extends State<Top> {
  final ColorNotifier _colorNotifier = ColorNotifier();

  @override
  void dispose() {
    _colorNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ColorInheritedNotifier(
      notifier: _colorNotifier,
      child: const Middle(),
    );
  }
}
