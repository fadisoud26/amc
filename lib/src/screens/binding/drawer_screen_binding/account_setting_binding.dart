import 'package:alwadi_medical_center/src/common_widgets/form_widget/password_form_field_controller.dart';
import 'package:alwadi_medical_center/src/screens/controller/drawer_screen_controller/accountSettingController/account_setting_controller.dart';
import 'package:alwadi_medical_center/src/screens/controller/drawer_screen_controller/accountSettingController/account_setting_gender_radio_button_controller.dart';
import 'package:alwadi_medical_center/src/screens/controller/drawer_screen_controller/accountSettingController/account_setting_relation_radio_button_controller.dart';
import 'package:get/get.dart';

class AccountSettingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountSettingController());
    Get.lazyPut(() => PasswordFormFieldController());
    Get.lazyPut(() => AccountSettingGenderRadioButtonController());
    Get.lazyPut(() => AccountSettingRelationRadioButtonController());
  }
}
