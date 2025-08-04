import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/edit_appointment_controller.dart';
import 'package:get/get.dart';

class EditAppointmentBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditAppointmentController());
  }
}
