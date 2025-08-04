
import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/screens/controller/drawer_screen_controller/accountSettingController/account_setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountSettingRelationRadioButtonController extends GetxController {
  AccountSettingController accountSettingController = Get.find();
  Rx<BorderSide> firstSide = BorderSide.none.obs;
  Rx<BorderSide> secondSide = BorderSide.none.obs;

  @override
  void onInit() {
    accountSettingController.isSingle.value
        ? firstSide.value = const BorderSide(color: thePrimaryColor, width: 2)
        : secondSide.value = const BorderSide(color: thePrimaryColor, width: 2);
    super.onInit();
  }

  void firstRadioOnTaped() {
    firstSide.value = const BorderSide(color: thePrimaryColor, width: 2);
    secondSide.value = BorderSide.none;

    accountSettingController.relationShip.value = '1';
  }

  void secondRadioOnTaped() {
    secondSide.value = const BorderSide(color: thePrimaryColor, width: 2);
    firstSide.value = BorderSide.none;

    accountSettingController.relationShip.value = '0';
  }
}
