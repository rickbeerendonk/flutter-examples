import 'package:flutter/widgets.dart';

void main() {
  runApp(
    Directionality(
      textDirection: TextDirection.ltr,
      child: RichText(
        text: TextSpan(
          text: 'Flutter ',
          style: TextStyle(color: Color(0xFF000000)),
          children: [
            TextSpan(
              text: 'is',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            TextSpan(
              text: ' fast',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    ),
  );
}
