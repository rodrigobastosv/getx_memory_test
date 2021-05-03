import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/counter_controller.dart';

import 'counter_widget.dart';

void main() async {
  Get.lazyPut(() => CounterController());
  await Future.delayed(Duration(seconds: 2));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterWidget(),
    );
  }
}
