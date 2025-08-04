import 'package:alwadi_medical_center/src/constents/date_time_constents.dart';
import 'package:alwadi_medical_center/src/screens/controller/welcom_screen_controller/singup_controller/signup_screen_controller.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DateFormFieldController extends GetxController {
  SignUpScreenController signUpController = Get.find();
  Rx<DateTime> selectdate = DateTime.now().obs;
  RxString hintText = AMCText.birthdayDateInputFieldHintText.tr.obs;

  void theDatePicker() async {
    DateTime? pickedDate = await showDatePicker(
      context: Get.overlayContext!,
      initialDate: selectdate.value,
      firstDate: fDate,
      lastDate: lDate,
      helpText: AMCText.birthdayDateInputFieldHintText.tr,
    );
    if (pickedDate != null && pickedDate != selectdate.value) {
      selectdate.value = pickedDate;
      signUpController.birthdayDate.value =
          DateFormat('yyyy-MM-dd').format(selectdate.value);
      hintText.value = DateFormat('yyyy-MM-dd').format(selectdate.value);
    }
  }
}
