import 'dart:convert';

import 'package:alwadi_medical_center/src/common_widgets/get_widget/snackbar.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/screens/model/categorys_model/category_screen_model.dart';
import 'package:alwadi_medical_center/src/serveces/get_storage.dart';
import 'package:alwadi_medical_center/src/utils/api/api_endpoints.dart';
import 'package:alwadi_medical_center/src/utils/api/api_parameter_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SeeAllMedicalSectionController extends GetxController {
  final ScrollController medicalScrollController = ScrollController();
  RxBool isLoading = true.obs;

  CategorysModel? categoryModel;

  @override
  void onInit() {
    super.onInit();
    categorysAPI();
  }

  void categorysAPI() {
    http.get(APIURI.categoryURI, headers: headerValue()).then((value) => {
          if (jsonDecode(value.body)[ApiParName.result] == 'ok')
            {
              categoryModel = CategorysModel.fromJson(jsonDecode(value.body)),
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
