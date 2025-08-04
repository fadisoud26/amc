import 'dart:convert';
import 'package:alwadi_medical_center/src/common_widgets/get_widget/snackbar.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/screens/model/profiles_model/user_model.dart';
import 'package:alwadi_medical_center/src/screens/view/drawer_pages/accountSettingScreen/account_setting_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/drawer_pages/complaintsScreen/complaints_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/drawer_pages/contactUsScreen/contact_us_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/drawer_pages/helpScreen/help_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/drawer_pages/ourSectionsScreen/our_sections_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/drawer_pages/settingScreen/setting_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/onboarding_screen/onboarding_screen.dart';
import 'package:alwadi_medical_center/src/serveces/get_storage.dart';
import 'package:alwadi_medical_center/src/utils/api/api_endpoints.dart';
import 'package:alwadi_medical_center/src/utils/api/api_parameter_name.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class MyDrawerController extends GetxController {
  RxString userName = ''.obs;
  RxString number = ''.obs;
  RxString profileImageLink = ''.obs;
  UserModel? userModel;

  void userPorfileAPI() {
    http.get(APIURI.userProfileURI, headers: headerValue()).then((value) => {
          if (jsonDecode(value.body)[ApiParName.result] == 'ok')
            {
              userModel = UserModel.fromJson(jsonDecode(value.body)),
              profileImageLink.value =
                  ApiEndPoints.baseURL + userModel!.profilePicture,
              userName.value = userModel!.username,
              number.value = userModel!.phoneNumber,
            }
          else if (jsonDecode(value.body)[ApiParName.result] == 'invalid')
            snackBar(
                title: jsonDecode(value.body)[ApiParName.message],
                image: notDoneImg1)
          else
            snackBarForError(),
        });
  }

  void userPorfileWithoutAPI() {
    profileImageLink.value = ApiEndPoints.baseURL + getProfileImage();
    userName.value = getUserName();
    number.value = getNumber();
  }

  @override
  void onInit() {
    checkIfUserDataIsEmpty() ? userPorfileWithoutAPI() : userPorfileAPI();
    super.onInit();
  }

  void ourSectionButton() {
    Get.toNamed(OurSectionsScreen.id);
  }

  void helpButton() {
    Get.toNamed(HelpScreen.id);
  }

  void contactButton() {
    Get.toNamed(ContactUsScreen.id);
  }

  void accountSettingButton() {
    Get.toNamed(AccountSettingScreen.id);
  }

  void settingButton() {
    Get.toNamed(SettingScreen.id);
  }

  void logOutButton() {
    logoutWithStorage();
    Get.offAllNamed(OnboardingScreen.id);
  }

  void complaintsButton() {
    Get.toNamed(ComplaintsScreen.id);
  }
}
