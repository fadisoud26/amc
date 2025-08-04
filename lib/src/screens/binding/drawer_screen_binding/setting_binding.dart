import 'package:alwadi_medical_center/src/screens/controller/drawer_screen_controller/setting_controller.dart';
import 'package:get/get.dart';

class SettingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingController());
  }
}
