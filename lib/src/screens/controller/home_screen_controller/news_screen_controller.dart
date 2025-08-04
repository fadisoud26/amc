import 'dart:convert';
import 'package:alwadi_medical_center/src/common_widgets/get_widget/snackbar.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/screens/model/main_news_model/main_news_screen_model.dart';
import 'package:alwadi_medical_center/src/serveces/get_storage.dart';
import 'package:alwadi_medical_center/src/utils/api/api_endpoints.dart';
import 'package:alwadi_medical_center/src/utils/api/api_parameter_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class NewsScreenController extends GetxController {
  RxBool isLoadingDone = true.obs;
  RxBool left = true.obs;
  final ScrollController scrollController = ScrollController();
  final ScrollController scrollController2 = ScrollController();

  MainNewsModel? mainNewsModel;

  @override
  void onInit() {
    mainNewsAPI();
    super.onInit();
  }

  void mainNewsAPI() {
    http.get(APIURI.mainNewsURI, headers: headerValue()).then((value) => {
          if (jsonDecode(value.body)[ApiParName.result] == 'ok')
            {
              mainNewsModel = MainNewsModel.fromJson(jsonDecode(value.body)),
              isLoadingDone.value = false,
            }
          else if (jsonDecode(value.body)[ApiParName.result] == 'invalid')
            snackBar(
                title: jsonDecode(value.body)[ApiParName.message],
                image: notDoneImg1)
          else
            snackBarForError(),
        });
  }

  Future<void> refresshIndicator() {
    mainNewsAPI();
    return Future.delayed(const Duration(seconds: 4));
  }
}
