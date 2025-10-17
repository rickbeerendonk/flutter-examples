/*! European Union Public License version 1.2 !*/
/*! Copyright © 2025 Rick Beerendonk          !*/

import 'package:flutter/widgets.dart';

import 'color_inherited_notifier.dart';
import 'bottom.dart';

class Middle extends StatelessWidget {
  const Middle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            ColorInheritedNotifier.of(context).notifier!.switchColor();
          },
          child: const Directionality(
            textDirection: TextDirection.ltr,
            child: Text('Switch'),
          ),
        ),
        const Bottom(),
      ],
    );
  }
}
