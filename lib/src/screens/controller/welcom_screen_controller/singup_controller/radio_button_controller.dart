import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/screens/controller/welcom_screen_controller/singup_controller/signup_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RadioButtonController extends GetxController {
  SignUpScreenController signUpController = Get.find();
  Rx<BorderSide> firstSide = BorderSide.none.obs;
  Rx<BorderSide> secondSide = BorderSide.none.obs;

  void firstRadioOnTaped(bool isGender) {
    firstSide.value = const BorderSide(color: thePrimaryColor, width: 2);
    secondSide.value = BorderSide.none;
    if (isGender) {
      signUpController.gender.value = '0';
    } else {
      signUpController.relationShip.value = '1';
    }
  }

  void secondRadioOnTaped(bool isGender) {
    secondSide.value = const BorderSide(color: thePrimaryColor, width: 2);
    firstSide.value = BorderSide.none;
    if (isGender) {
      signUpController.gender.value = '1';
    } else {
      signUpController.relationShip.value = '0';
    }
  }
}
