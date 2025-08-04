import 'dart:convert';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/home_screen.dart';
import 'package:alwadi_medical_center/src/serveces/get_storage.dart';
import 'package:alwadi_medical_center/src/utils/api/page_argument_name.dart';
import 'package:http/http.dart' as http;
import 'package:alwadi_medical_center/src/common_widgets/get_widget/snackbar.dart';
import 'package:alwadi_medical_center/src/utils/api/api_endpoints.dart';
import 'package:alwadi_medical_center/src/utils/api/api_parameter_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreenController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController phoneNumberTED = TextEditingController();
  final TextEditingController userNameTED = TextEditingController();
  final TextEditingController passwordTED = TextEditingController();
  RxString birthdayDate = ''.obs;
  RxString gender = '0'.obs;
  RxString relationShip = '0'.obs;
  RxString imageConvert = '-'.obs;
  RxBool isDataLoading = false.obs;

  bool saveForm() {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return false;
    formKey.currentState!.save();
    return true;
  }

  void signUpButton() {
    if (saveForm()) {
      isDataLoading.value = true;

      var bodyValue = <String, String>{
        ApiParName.signupParAPI.phoneNumber: phoneNumberTED.text.trim(),
        ApiParName.signupParAPI.username: userNameTED.text.trim(),
        ApiParName.signupParAPI.password: passwordTED.text.trim(),
        ApiParName.signupParAPI.gender: gender.value,
        ApiParName.signupParAPI.relationShip: relationShip.value,
        ApiParName.signupParAPI.birthdayDate: birthdayDate.value,
        ApiParName.signupParAPI.profileImage: imageConvert.value,
      };
      http.post(APIURI.signupURI, body: jsonEncode(bodyValue)).then((value) => {
            if (jsonDecode(value.body)[ApiParName.result] == 'ok')
              {
                setTokenAndUserName(
                    token: jsonDecode(value.body)[ApiParName.token],
                    userName: userNameTED.text.trim()),
                Get.offNamed(HomeScreen.id, arguments: {PageArgName.pageId: 2}),
                isDataLoading.value = false,
                snackBar(
                title: jsonDecode(value.body)[ApiParName.message],
                image: doneImg10)
              }
            else if (jsonDecode(value.body)[ApiParName.result] == 'invalid')
              {
                isDataLoading.value = false,
                snackBar(
                title: jsonDecode(value.body)[ApiParName.message],
                image: notDoneImg2),
              }
            else
              {
                isDataLoading.value = false,
                snackBarForError(),
              }
          });
      //isDataLoading.value = false;
    }
  }

  @override
  void onClose() {
    phoneNumberTED.clear();
    userNameTED.clear();
    passwordTED.clear();
    gender.value = '0';
    relationShip.value = '0';
    super.onClose();
  }
}
