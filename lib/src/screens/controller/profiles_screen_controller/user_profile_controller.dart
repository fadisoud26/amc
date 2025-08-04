import 'dart:convert';
import 'package:alwadi_medical_center/src/common_widgets/get_widget/snackbar.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/screens/model/profiles_model/user_model.dart';
import 'package:alwadi_medical_center/src/serveces/get_storage.dart';
import 'package:alwadi_medical_center/src/utils/api/api_endpoints.dart';
import 'package:alwadi_medical_center/src/utils/api/api_parameter_name.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UserProfileController extends GetxController {
  RxBool isLoading = true.obs;
  UserModel? userModel;
  @override
  void onInit() {
    userProfileAPI();
    super.onInit();
  }

  void userProfileAPI() {
    http.get(APIURI.userProfileURI, headers: headerValue()).then((value) => {
          if (jsonDecode(value.body)[ApiParName.result] == 'ok')
            {
              userModel = UserModel.fromJson(jsonDecode(value.body)),
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
