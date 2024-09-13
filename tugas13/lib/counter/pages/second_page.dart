import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas13/counter/controller/counter_controller.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  // final int counter;

  @override
  Widget build(BuildContext context) {
    var counterC = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        // child: GetBuilder(
        //   init: CounterController(),
        //   builder: (controller) => Text('Nilai Counter ${controller.counter}'),
        // ),
        child: Obx(() => Text('Nilai Counter ${counterC.counter.value}')),
      ),
    );
  }
}
