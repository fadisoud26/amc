import 'dart:async';
import 'dart:convert';
import 'package:alwadi_medical_center/src/common_widgets/get_widget/snackbar.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/screens/model/appointment_model/appointment_model.dart';
import 'package:alwadi_medical_center/src/serveces/get_storage.dart';
import 'package:alwadi_medical_center/src/utils/api/api_endpoints.dart';
import 'package:alwadi_medical_center/src/utils/api/api_parameter_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AppointmentScreenController extends GetxController {
  final ScrollController scrollController = ScrollController();
  final ScrollController scrollController2 = ScrollController();
  RxBool isLoading = true.obs;
  RxBool left = true.obs;
  MyAppointmentModel? appointmentModel;
  Timer? timer;

  @override
  void onInit() {
    appointmentAPI();
    // timer = Timer.periodic(
    //    const Duration(seconds: 15), (Timer t) => appointmentAPI()); 
    super.onInit();
  }

  @override
  void onClose() {
    timer?.cancel();
    super.onClose();
  }

  void appointmentAPI() {
    isLoading.value = true;
    http.get(APIURI.appointmentURI, headers: headerValue()).then((value) => {
          if (jsonDecode(value.body)[ApiParName.result] == 'ok')
            {
              appointmentModel =
                  MyAppointmentModel.fromJson(jsonDecode(value.body)),
              isLoading.value = false,
            }
          else if (jsonDecode(value.body)[ApiParName.result] == 'invalid')
           snackBar(
                title: jsonDecode(value.body)[ApiParName.message],
                image: notDoneImg2)
          else
            snackBarForError(),
        });
  }

  void onTapOkFroDelete({required int id, required bool isDoctor}) {
    var bodyValue = <String, dynamic>{
      ApiParName.deleteAppointmentCalenderParAPI.id: id,
      ApiParName.deleteAppointmentCalenderParAPI.isDoctor: isDoctor,
    };
    isLoading.value = true;
    http
        .post(APIURI.deleteAppointmentURI,
            headers: headerValue(), body: jsonEncode(bodyValue))
        .then((value) => {
              if (jsonDecode(value.body)[ApiParName.result] == 'ok')
                {
                  snackBar(
                title: jsonDecode(value.body)[ApiParName.message],
                image: doneImg5),
                  appointmentAPI(),
                }
              else if (jsonDecode(value.body)[ApiParName.result] == 'invalid')
                snackBar(
                title: jsonDecode(value.body)[ApiParName.message],
                image: notDoneImg1)
              else
                snackBarForError(),
            });
    Get.back();
  }

  Future<void> refresshIndicator() {
    appointmentAPI();
    return Future.delayed(const Duration(seconds: 4));
  }
}
