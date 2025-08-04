import 'package:alwadi_medical_center/src/screens/controller/drawer_screen_controller/our_sections_controller.dart';
import 'package:get/get.dart';

class OurSectionsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OurSectionsController());
  }
}
