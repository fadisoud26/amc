import 'dart:convert';
import 'package:alwadi_medical_center/src/common_widgets/get_widget/snackbar.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/screens/model/notification_model.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/home_screen.dart';
import 'package:alwadi_medical_center/src/serveces/get_storage.dart';
import 'package:alwadi_medical_center/src/utils/api/api_endpoints.dart';
import 'package:alwadi_medical_center/src/utils/api/api_parameter_name.dart';
import 'package:alwadi_medical_center/src/utils/api/page_argument_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class NotificationScreenController extends GetxController {
  RxBool isLoadingDone = true.obs;
  final ScrollController scrollController = ScrollController();
  RxDouble reseptionRate = 3.0.obs;
  RxDouble cleanlessRate = 3.0.obs;
  RxDouble therapistingRate = 3.0.obs;
  RxDouble treatmentOdMedicalStaffRate = 3.0.obs;
  NotificationModel? notificationModel;

  @override
  void onInit() {
    notificationAPI();
    super.onInit();
  }

  void notificationAPI() {
    http.get(APIURI.notificationURI, headers: headerValue()).then((value) => {
          if (jsonDecode(value.body)[ApiParName.result] == 'ok')
            {
              notificationModel =
                  NotificationModel.fromJson(jsonDecode(value.body)),
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

  void onTapRate({
    required String id,
    required bool doctorAppointment,
    required double cleanless,
    required double receptionRate,
    required double therapistingRate,
    required double treatmentOdMedicalStaff,
  }) {
    var bodyValue = <String, dynamic>{
      ApiParName.rateAppointmentParAPI.id: id,
      ApiParName.rateAppointmentParAPI.doctorAppointment: doctorAppointment,
      ApiParName.rateAppointmentParAPI.cleanless: cleanless.toInt(),
      ApiParName.rateAppointmentParAPI.receptionRate: receptionRate.toInt(),
      ApiParName.rateAppointmentParAPI.therapistingRate: therapistingRate.toInt(),
      ApiParName.rateAppointmentParAPI.treatmentOdMedicalStaff:
          treatmentOdMedicalStaff.toInt(),
    };

    http
        .post(APIURI.rateAppointmentURI,
            headers: headerValue(), body: jsonEncode(bodyValue))
        .then((value) => {
              if (jsonDecode(value.body)[ApiParName.result] == 'ok')
                {
                  Get.offAllNamed(HomeScreen.id,
                      arguments: {PageArgName.pageId: 3}),
                  snackBar(
                title: jsonDecode(value.body)[ApiParName.message],
                image: doneImg8),
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
    notificationAPI();
    return Future.delayed(const Duration(seconds: 4));
  }
}
