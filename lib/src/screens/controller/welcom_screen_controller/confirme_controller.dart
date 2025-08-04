import 'dart:convert';
import 'package:alwadi_medical_center/src/screens/view/home_pages/home_screen.dart';
import 'package:alwadi_medical_center/src/utils/api/api_endpoints.dart';
import 'package:alwadi_medical_center/src/utils/api/page_argument_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ConfirmeController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final confirmeTED = TextEditingController();

  bool saveForm() {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return false;
    formKey.currentState!.save();
    return true;
  }

  static Future<dynamic> forgetpassConfirme({
    required String email,
    required String code,
    required BuildContext context,
  }) async {
    http
        .post(
          APIURI.confirmURI,
          body: jsonEncode(<String, dynamic>{
            //  ApiParName.confirmParAPI.code: code,
            //  ApiParName.confirmParAPI.email: email,
          }),
        )
        .then((value) => {
              if (jsonDecode(value.body)['result'] == 'ok')
                {
                  Get.offNamed(HomeScreen.id,
                      arguments: {PageArgName.pageId: 2}),
                }
            });
  }

  void confirmButton() {
    if (saveForm()) {
      Get.offNamed(HomeScreen.id, arguments: {PageArgName.pageId: 2});
    }
  }

  @override
  void onClose() {
    confirmeTED.clear();
    super.onClose();
  }
}
