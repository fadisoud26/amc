
import 'package:alwadi_medical_center/src/common_widgets/form_widget/password_form_field_controller.dart';
import 'package:alwadi_medical_center/src/screens/controller/welcom_screen_controller/singup_controller/date_form_field_controller.dart';
import 'package:alwadi_medical_center/src/screens/controller/welcom_screen_controller/singup_controller/image_form_controller.dart';
import 'package:alwadi_medical_center/src/screens/controller/welcom_screen_controller/singup_controller/radio_button_controller.dart';
import 'package:alwadi_medical_center/src/screens/controller/welcom_screen_controller/singup_controller/signup_screen_controller.dart';
import 'package:get/get.dart';

class SignUpBinding implements Bindings {
  @override
  void dependencies() {
    //Get.put(FormController());
    Get.lazyPut(() => SignUpScreenController());
    Get.lazyPut(() => DateFormFieldController());
    Get.lazyPut(() => PasswordFormFieldController());
    Get.create(() => RadioButtonController());
    Get.lazyPut(() => ImageFormController());
    // Get.put(LogInScreenController());
    //Get.put(FormController(), tag: 'fromlogin',permanent: true);
  }
}
