import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/category_screens_controller/see_all_services_section_controller.dart';
import 'package:get/get.dart';

class SeeAllServicesSectionBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SeeAllServicesSectionController());
  }
}
