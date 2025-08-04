import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/category_screens_controller/doctor_screen_controller.dart';

import 'package:get/get.dart';

class DoctorBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(DoctorScreenController());
  }
}
