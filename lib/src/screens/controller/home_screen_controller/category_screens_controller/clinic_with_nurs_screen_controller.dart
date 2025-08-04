import 'dart:convert';
import 'package:alwadi_medical_center/src/common_widgets/get_widget/snackbar.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/screens/model/categorys_model/nurs_list_model.dart';
import 'package:alwadi_medical_center/src/serveces/get_storage.dart';
import 'package:alwadi_medical_center/src/utils/api/api_endpoints.dart';
import 'package:alwadi_medical_center/src/utils/api/api_parameter_name.dart';
import 'package:alwadi_medical_center/src/utils/api/page_argument_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ClinicWithNursScreenController extends GetxController {
  final ScrollController scrollController = ScrollController();
  RxBool isLoading = true.obs;
  var arguments = Get.arguments;
  NursListModel? nursListModel;
  @override
  void onInit() {
    getNursesListAPI();
    super.onInit();
  }

  void getNursesListAPI() {
    var bodyValue = <String, String>{
      ApiParName.nursListParAPI.name: arguments[PageArgName.name],
    };

    http
        .post(APIURI.nursesListURI,
            headers: headerValue(), body: jsonEncode(bodyValue))
        .then((value) => {
              if (jsonDecode(value.body)[ApiParName.result] == 'ok')
                {
                  nursListModel =
                      NursListModel.fromJson(jsonDecode(value.body)),
                  isLoading.value = false,
                }
              else if (jsonDecode(value.body)[ApiParName.result] == 'invalid')
                snackBar(
                title: jsonDecode(value.body)[ApiParName.message],
                image: notDoneImg1)
              else
                snackBarForError(),
            });
  }
}
