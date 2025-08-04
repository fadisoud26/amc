import 'dart:convert';

import 'package:alwadi_medical_center/src/common_widgets/get_widget/snackbar.dart';
import 'package:alwadi_medical_center/src/constents/edge_insets_constents.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/serveces/get_storage.dart';
import 'package:alwadi_medical_center/src/utils/api/api_endpoints.dart';
import 'package:alwadi_medical_center/src/utils/api/api_parameter_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ComplaintsController extends GetxController {
  final TextEditingController messageTED = TextEditingController();
  RxString c = ''.obs;

  void onTapSend() {
    var bodyValue = <String, dynamic>{
      ApiParName.feedbackParAPI.message: messageTED.text,
    };

    http
        .post(APIURI.feedbackURI,
            body: jsonEncode(bodyValue), headers: headerValue())
        .then((value) => {
              if (jsonDecode(value.body)[ApiParName.result] == 'ok')
                {
                  c.value = messageTED.text,
                  messageTED.text = '',
                  Get.snackbar(jsonDecode(value.body)[ApiParName.message], '',
                      snackPosition: SnackPosition.BOTTOM,
                      messageText:
                          const Image(image: AssetImage(complaintsImg)),
                      duration: const Duration(seconds: 4),
                      padding: snackBarPadding,
                      margin: snackBarMargin,
                      forwardAnimationCurve: Curves.easeOutBack,
                      reverseAnimationCurve: Curves.easeOut),
                }
              else if (jsonDecode(value.body)[ApiParName.result] == 'invalid')
                {
                  snackBar(
                      title: jsonDecode(value.body)[ApiParName.message],
                      image: notDoneImg2)
                }
              else
                {
                  snackBarForError(),
                }
            });
  }
}
