import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/counter_controller.dart';

class NextWidget extends StatelessWidget {
  const NextWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CounterController>();
    print(controller);
    print(controller.counterValue);
    return Scaffold();
  }
}
