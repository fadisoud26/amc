import 'package:alwadi_medical_center/src/screens/controller/profiles_screen_controller/doctor_device_nurs_profile_controller.dart';
import 'package:get/get.dart';

class DoctorDeviceNursProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DoctorDeviceNursProfileController());
  }
}
