import 'dart:convert';
import 'package:alwadi_medical_center/src/common_widgets/get_widget/snackbar.dart';
import 'package:alwadi_medical_center/src/constents/date_time_constents.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/screens/model/profiles_model/user_model.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/home_screen.dart';
import 'package:alwadi_medical_center/src/serveces/get_storage.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:alwadi_medical_center/src/utils/api/api_endpoints.dart';
import 'package:alwadi_medical_center/src/utils/api/api_parameter_name.dart';
import 'package:alwadi_medical_center/src/utils/api/page_argument_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class AccountSettingController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController phoneNumberTED = TextEditingController();

  UserModel? userModel;

  RxBool isLoadingOldData = true.obs;
  RxBool isLoadingForEditInfo = false.obs;
  Rx<DateTime> selectdate = DateTime.now().obs;
  RxString dateBirthdayhintText = ''.obs;
  RxBool isMale = true.obs;
  RxBool isSingle = true.obs;
  RxString number = '-'.obs;

  @override
  void onInit() {
    getUserProfileAPI();
    super.onInit();
  }

  RxString birthdayDate = '-'.obs;
  RxString gender = '-'.obs;
  RxString relationShip = '-'.obs;
  RxString imageConvert = '-'.obs;

  bool saveForm() {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return false;
    formKey.currentState!.save();
    return true;
  }

  void theDatePicker() async {
    DateTime? pickedDate = await showDatePicker(
      context: Get.overlayContext!,
      initialDate: selectdate.value,
      firstDate: fDate,
      lastDate: lDate,
      helpText: AMCText.birthdayDateInputFieldHintText.tr,
    );
    if (pickedDate != null && pickedDate != selectdate.value) {
      selectdate.value = pickedDate;
      birthdayDate.value = DateFormat('yyyy-MM-dd').format(selectdate.value);
      dateBirthdayhintText.value =
          DateFormat('yyyy-MM-dd').format(selectdate.value);
    }
  }

  void editeInformationButton() {
    if ((saveForm() || phoneNumberTED.text.trim() == '') &&
        (birthdayDate.value != '-' ||
            gender.value != '-' ||
            relationShip.value != '-' ||
            imageConvert.value != '-')) {
      isLoadingForEditInfo.value = true;
      var bodyValue = <String, String>{
        ApiParName.editProfileInfoParAPI.number:
            phoneNumberTED.text.trim() == '' ? '-' : phoneNumberTED.text.trim(),
        ApiParName.editProfileInfoParAPI.birthdayDate: birthdayDate.value,
        ApiParName.editProfileInfoParAPI.gender: gender.value,
        ApiParName.editProfileInfoParAPI.relationShip: relationShip.value,
        ApiParName.editProfileInfoParAPI.profilePicture: imageConvert.value,
      };
      http
          .post(APIURI.editProfileInfoURI,
              headers: headerValue(), body: jsonEncode(bodyValue))
          .then((value) => {
                if (jsonDecode(value.body)[ApiParName.result] == 'ok')
                  {
                    isLoadingForEditInfo.value = false,
                    snackBar(
                        title: jsonDecode(value.body)[ApiParName.message],
                        image: doneImg1),
                    Get.offAllNamed(HomeScreen.id,
                        arguments: {PageArgName.pageId: 2}),
                  }
                else if (jsonDecode(value.body)[ApiParName.result] == 'invalid')
                  {
                    snackBar(
                        title: jsonDecode(value.body)[ApiParName.message],
                        image: notDoneImg1),
                    isLoadingForEditInfo.value = false,
                  }
                else
                  {
                    snackBarForError(),
                    isLoadingForEditInfo.value = false,
                  }
              });
    }
  }

  void getUserProfileAPI() {
    http.get(APIURI.userProfileURI, headers: headerValue()).then((value) => {
          if (jsonDecode(value.body)[ApiParName.result] == 'ok')
            {
              userModel = UserModel.fromJson(jsonDecode(value.body)),
              dateBirthdayhintText.value = userModel!.birthDate,
              isMale.value = userModel!.isMale,
              isSingle.value = userModel!.isSingle,
              number.value = userModel!.phoneNumber,
              isLoadingOldData.value = false,
            }
          else if (jsonDecode(value.body)[ApiParName.result] == 'invalid')
            snackBar(
                title: jsonDecode(value.body)[ApiParName.message],
                image: notDoneImg1)
          else
            snackBarForError(),
        });
  }

  @override
  void onClose() {
    phoneNumberTED.clear();
    gender.value = '-';
    relationShip.value = '-';
    super.onClose();
  }
}
