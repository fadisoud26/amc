import 'dart:convert';
import 'package:alwadi_medical_center/src/common_widgets/get_widget/snackbar.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/screens/model/categorys_model/devices_list_model.dart';
import 'package:alwadi_medical_center/src/screens/model/categorys_model/doctors_list_model.dart';
import 'package:alwadi_medical_center/src/serveces/get_storage.dart';
import 'package:alwadi_medical_center/src/utils/api/api_endpoints.dart';
import 'package:alwadi_medical_center/src/utils/api/api_parameter_name.dart';
import 'package:alwadi_medical_center/src/utils/api/page_argument_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ClinicWithDoctorsOrDevicesScreenController extends GetxController {
  final ScrollController scrollController = ScrollController();
  RxBool isLoading = true.obs;
  var arguments = Get.arguments;
  DoctorsListModel? doctorsListModel;
  DevicesListModel? devicesListModel;
  @override
  void onInit() {
    arguments[PageArgName.isDoctor] ? getDoctorsListAPI() : getDeviesListAPI();

    super.onInit();
  }

  void getDoctorsListAPI() {
    var bodyValue = <String, String>{
      ApiParName.clinicParAPI.name: arguments['name'],
    };
    http
        .post(APIURI.doctorsListURI,
            body: jsonEncode(bodyValue), headers: headerValue())
        .then((value) => {
              if (jsonDecode(value.body)[ApiParName.result] == 'ok')
                {
                  doctorsListModel =
                      DoctorsListModel.fromJson(jsonDecode(value.body)),
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

  void getDeviesListAPI() {
    var bodyValue = <String, String>{
      ApiParName.clinicParAPI.name: arguments['name'],
    };
    http
        .post(APIURI.devicesListURI,
            body: jsonEncode(bodyValue), headers: headerValue())
        .then((value) => {
              if (jsonDecode(value.body)[ApiParName.result] == 'ok')
                {
                  devicesListModel =
                      DevicesListModel.fromJson(jsonDecode(value.body)),
                  isLoading.value = false,
                }
              else if (jsonDecode(value.body)[ApiParName.result] == 'invalid')
                {}
              else
                {}
            });
  }
}
