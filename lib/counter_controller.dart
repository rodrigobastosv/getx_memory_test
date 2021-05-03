import 'package:get/state_manager.dart';

class CounterController extends GetxController {
  RxInt counterValue = 0.obs;

  void incrementValue() {
    counterValue.value++;
  }

  @override
  void onClose() {
    print('onClose is called');
    super.onClose();
  }
}
