import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;
  void increment() => count++;
}

void main() {
  final controller = Get.put(CounterController());
  runApp(CounterApp(controller: controller));
}

class CounterApp extends StatelessWidget {
  final CounterController controller;
  const CounterApp({required this.controller, super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
      children: [
        Text('Count: ${controller.count}'),
        ElevatedButton(
          onPressed: controller.increment,
          child: const Text('Increment'),
        ),
      ],
    ));
  }
}
