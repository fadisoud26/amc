
import 'package:alwadi_medical_center/src/common_widgets/form_widget/password_form_field_controller.dart';
import 'package:alwadi_medical_center/src/screens/controller/welcom_screen_controller/login_screen_controller.dart';
import 'package:get/get.dart';

class LogInBinding implements Bindings {

  @override
  void dependencies() {
    //Get.put(FormController());
    Get.lazyPut(() => LogInScreenController());
    Get.lazyPut(() => PasswordFormFieldController());
   // Get.put(LogInScreenController());
   //Get.put(FormController(), tag: 'fromlogin',permanent: true);
  }
}
