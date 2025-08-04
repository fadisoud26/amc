import 'package:alwadi_medical_center/src/screens/controller/drawer_screen_controller/complaints_controller.dart';
import 'package:get/get.dart';

class ComplaintsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ComplaintsController());
  }
}
