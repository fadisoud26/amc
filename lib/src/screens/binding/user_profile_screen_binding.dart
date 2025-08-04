import 'package:alwadi_medical_center/src/screens/controller/profiles_screen_controller/user_profile_controller.dart';
import 'package:get/get.dart';

class UserProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserProfileController());
  }
}
