import 'package:flutter/material.dart';

void main() => runApp(const TimerWidget());

class TimerWidget extends StatefulWidget {
  const TimerWidget({super.key});
  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  int seconds = 0;
  late final ticker = Stream.periodic(const Duration(seconds: 1), (i) => i);
  late final subscription;

  @override
  void initState() {
    super.initState();
    subscription = ticker.listen((i) {
      setState(() {
        seconds = i;
      });
    });
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text('Seconds passed: $seconds');
  }
}
