import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas13/counter/controller/counter_controller.dart';
import 'second_page.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    var counterC = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    // key: const Icon(Icons.remove),
                    onPressed: () {
                      counterC.decrement();
                    },
                    // style: ButtonStyle(backgroundColor: Colors.white),
                    child: const Icon(Icons.remove),
                  ),
                ),
                Obx(
                  () => Text('Value Counter : ${counterC.counter.value}'),
                ),
                // GetBuilder(
                //     init: counterC,
                //     builder: (_) =>
                //         Text('Value Counter : ${counterC.counter}')),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    // key: const Icon(Icons.remove),
                    onPressed: () {
                      counterC.increment();
                    },
                    child: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondPage()));
              },
              child: const Text('Lanjut ke second page'),
            ),
          ],
        ),
      ),
    );
  }
}
