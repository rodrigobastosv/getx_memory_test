import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_controller.dart';
import 'next_widget.dart';

class CounterWidget extends StatelessWidget {
  final controller = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(controller.counterValue.value.toString()),
            ),
            RaisedButton(
              onPressed: () {
                Get.to(NextWidget());
              },
              child: Text('Navigate'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: controller.incrementValue,
      ),
    );
  }
}
