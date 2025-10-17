/*! European Union Public License version 1.2 !*/
/*! Copyright © 2025 Rick Beerendonk          !*/

import 'package:flutter/widgets.dart';

class ColorNotifier extends ChangeNotifier {
  Color _color = const Color(0xFFFF0000); // red

  Color get color => _color;

  void switchColor() {
    _color =
        _color ==
            const Color(0xFFFF0000) // red
        ? const Color(0xFF00FF00) // green
        : const Color(0xFFFF0000); // red
    notifyListeners();
  }
}
