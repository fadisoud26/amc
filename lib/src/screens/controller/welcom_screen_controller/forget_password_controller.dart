import 'dart:convert';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/confirm_screen/confirme_screen.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:alwadi_medical_center/src/utils/api/api_endpoints.dart';
import 'package:alwadi_medical_center/src/utils/api/api_parameter_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ForgetPasswordController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailTED = TextEditingController();
  final TextEditingController passwordTED = TextEditingController();

  static Future<dynamic> forgetpass({
    required String email,
    required String newPassword,
  }) async {
    http
        .post(APIURI.forgetPassURI,
            body: jsonEncode(<String, dynamic>{
              //  ApiParName.forgetPassParAPI.email: email,
              //  ApiParName.forgetPassParAPI.newPassword: newPassword,
            }))
        .then((value) => {
              if (jsonDecode(value.body)[ApiParName.result] == 'ok')
                Get.toNamed(ConfirmeScreen.id, arguments: {
                  'id': 'forgot_screen',
                  'emailController': email,
                  'userNameController': ' ',
                })
              else if (jsonDecode(value.body)[ApiParName.result] == 'invalid')
                Get.snackbar('', 'bla')
              else
                Get.snackbar(AMCText.noInternetConection.tr, 'bla'),
            });
  }

  RxString isDataLoading = 'normal'.obs;

  bool saveForm() {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return false;
    formKey.currentState!.save();
    return true;
  }

  void forgetPasswordButton() {
    if (saveForm()) {
      /* forgetpass(
        email: emailTED.text.trim(),
        newPassword: passwordTED.text.trim(),
      );*/

      Get.toNamed(ConfirmeScreen.id);
    }
  }

  @override
  void onClose() {
    emailTED.clear();
    passwordTED.clear();
    super.onClose();
  }
}
