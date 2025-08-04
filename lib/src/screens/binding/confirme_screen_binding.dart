import 'package:alwadi_medical_center/src/screens/controller/welcom_screen_controller/confirme_controller.dart';
import 'package:get/get.dart';

class ConfirmeBinding implements  Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ConfirmeController());
  }

}