import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetsApp(
      color: const Color(0xFFFFFFFF),
      builder: (context, _) {
        return Directionality(
          textDirection: TextDirection.ltr,
          child: MyPage(),
        );
      },
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Hello Flutter!');
  }
}
