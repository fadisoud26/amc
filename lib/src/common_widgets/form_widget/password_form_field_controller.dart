
import 'package:get/get.dart';

class PasswordFormFieldController extends GetxController {
  RxBool isPasswordVisible = true.obs;

  void clickOnSuffixIconInPassField() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }
}
