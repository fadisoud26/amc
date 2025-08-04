import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/category_screens_controller/nurs_screen_controller.dart';

import 'package:get/get.dart';

class NursBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NursScreenController());
  }
}
