import 'package:alwadi_medical_center/src/screens/controller/drawer_screen_controller/help_controller.dart';
import 'package:get/get.dart';

class HelpBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HelpController());
  }
}
