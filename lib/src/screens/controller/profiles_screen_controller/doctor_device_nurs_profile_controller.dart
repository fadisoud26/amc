import 'dart:convert';
import 'package:alwadi_medical_center/src/common_widgets/get_widget/snackbar.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/screens/model/profiles_model/device_profile_info_model.dart';
import 'package:alwadi_medical_center/src/screens/model/profiles_model/doctor_profile_info_model.dart';
import 'package:alwadi_medical_center/src/screens/model/profiles_model/nurs_profile_info_model.dart';
import 'package:alwadi_medical_center/src/serveces/get_storage.dart';
import 'package:alwadi_medical_center/src/utils/api/api_endpoints.dart';
import 'package:alwadi_medical_center/src/utils/api/api_parameter_name.dart';
import 'package:alwadi_medical_center/src/utils/api/page_argument_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DoctorDeviceNursProfileController extends GetxController {
  DoctorProfileModel? doctorInfoModel;
  DeviceProfileModel? deviceInfoModel;
  NursProfileModel? nursInfoModel;
  final ScrollController scrollController = ScrollController();
  var arguments = Get.arguments;

  RxBool isLoading = true.obs;
  RxString specialization = ' '.obs;
  RxList<String> information = [' '].obs;
  RxString profileImageLink = ''.obs;
  RxString name = ' '.obs;

  @override
  void onInit() {
    if (arguments[PageArgName.doctorName] != 'null') {
      getDoctorInformationAPI();
    } else if (arguments[PageArgName.deviceName] != 'null') {
      getDeviceInformationAPI();
    } else {
      getNursInformationAPI();
    }
    super.onInit();
  }

  void getDeviceInformationAPI() {
    var bodyValue = <String, String>{
      ApiParName.deviceProfileParAPI.deviceName:
          arguments[PageArgName.deviceName],
    };

    http
        .post(APIURI.deviceProfileURI,
            body: jsonEncode(bodyValue), headers: headerValue())
        .then((value) => {
              if (jsonDecode(value.body)[ApiParName.result] == 'ok')
                {
                  deviceInfoModel =
                      DeviceProfileModel.fromJson(jsonDecode(value.body)),
                  specialization.value = ' ',
                  information.value = deviceInfoModel!.descriptipn,
                  profileImageLink.value =
                      ApiEndPoints.baseURL + deviceInfoModel!.image,
                  name.value = deviceInfoModel!.name,
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

  void getNursInformationAPI() {
    var bodyValue = <String, String>{
      ApiParName.nursProfileParAPI.nursName: arguments[PageArgName.nursName],
    };

    http
        .post(APIURI.nursProfileURI,
            body: jsonEncode(bodyValue), headers: headerValue())
        .then((value) => {
              if (jsonDecode(value.body)[ApiParName.result] == 'ok')
                {
                  nursInfoModel =
                      NursProfileModel.fromJson(jsonDecode(value.body)),
                  specialization.value = nursInfoModel!.specialization,
                  information.value = nursInfoModel!.descriptipn,
                  profileImageLink.value =
                      ApiEndPoints.baseURL + nursInfoModel!.image,
                  name.value = nursInfoModel!.name,
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

  void getDoctorInformationAPI() {
    var bodyValue = <String, String>{
      ApiParName.doctorProfileParAPI.doctorName:
          arguments[PageArgName.doctorName],
    };
    http
        .post(APIURI.doctorProfileURI,
            body: jsonEncode(bodyValue), headers: headerValue())
        .then((value) => {
              if (jsonDecode(value.body)[ApiParName.result] == 'ok')
                {
                  doctorInfoModel =
                      DoctorProfileModel.fromJson(jsonDecode(value.body)),
                  specialization.value = doctorInfoModel!.specialization,
                  information.value = doctorInfoModel!.descriptipn,
                  profileImageLink.value =
                      ApiEndPoints.baseURL + doctorInfoModel!.image,
                  name.value = doctorInfoModel!.name,
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
