/*! European Union Public License version 1.2 !*/
/*! Copyright © 2025 Rick Beerendonk          !*/

import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'color_notifier.dart';
import 'bottom.dart';

class Middle extends StatelessWidget {
  const Middle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            context.read<ColorNotifier>().switchColor();
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
