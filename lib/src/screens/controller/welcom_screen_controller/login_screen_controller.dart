import 'dart:convert';
import 'package:alwadi_medical_center/src/common_widgets/get_widget/snackbar.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/home_screen.dart';
import 'package:alwadi_medical_center/src/serveces/get_storage.dart';
import 'package:alwadi_medical_center/src/utils/api/api_endpoints.dart';
import 'package:alwadi_medical_center/src/utils/api/api_parameter_name.dart';
import 'package:alwadi_medical_center/src/utils/api/page_argument_name.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogInScreenController extends GetxController {
  RxBool isDataLoading = false.obs;

  final formKey = GlobalKey<FormState>();
  final TextEditingController userNameTED = TextEditingController();
  final TextEditingController passwordTED = TextEditingController();

  bool saveForm() {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return false;
    formKey.currentState!.save();
    return true;
  }

  void logInButton() {
    if (saveForm()) {
      isDataLoading.value = true;

      var bodyValue = <String, String>{
        ApiParName.loginParAPI.username: userNameTED.text.trim(),
        ApiParName.loginParAPI.password: passwordTED.text.trim(),
      };

      http.post(APIURI.loginURI, body: jsonEncode(bodyValue)).then((value) => {
            if (jsonDecode(value.body)[ApiParName.result] == 'ok')
              {
                setTokenAndUserName(
                  token: jsonDecode(value.body)[ApiParName.token],
                  userName: userNameTED.text.trim(),
                ),
                Get.offNamed(HomeScreen.id, arguments: {PageArgName.pageId: 2}),
                isDataLoading.value = false,
              }
            else if (jsonDecode(value.body)[ApiParName.result] == 'invalid')
              {
                isDataLoading.value = false,
                snackBar(
                title: jsonDecode(value.body)[ApiParName.message],
                image: notDoneImg1),
              }
            else
              {
                isDataLoading.value = false,
                snackBarForError(),
              }
          });
    }
  }

  @override
  void onClose() {
    userNameTED.clear();
    passwordTED.clear();
    super.onClose();
  }
}
