import 'package:alwadi_medical_center/src/screens/controller/drawer_screen_controller/contact_us_controller.dart';
import 'package:get/get.dart';

class ContactUsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContactUsScreenController());
  }
}
