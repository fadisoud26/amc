import 'dart:convert';
import 'package:alwadi_medical_center/src/common_widgets/get_widget/snackbar.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/screens/model/profiles_model/user_model.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/appointment_screen/appointment_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/category_screen/main_category_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/news_screen/main_news_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/notification_screen/notifications_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/offer_screen/offer_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/profile_pages/user_profile/user_profile_screen.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:alwadi_medical_center/src/serveces/get_storage.dart';
import 'package:alwadi_medical_center/src/utils/api/api_endpoints.dart';
import 'package:alwadi_medical_center/src/utils/api/api_parameter_name.dart';
import 'package:alwadi_medical_center/src/utils/api/page_argument_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeScreenController extends GetxController {
  PageController pageController = PageController(
      initialPage:
          Get.arguments != null ? Get.arguments[PageArgName.pageId] : 2);
  NotchBottomBarController navBarController =
      NotchBottomBarController(index: Get.arguments[PageArgName.pageId]);
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  UserModel? userModel;
  RxBool profileImageDownloadDone = false.obs;
  RxString profileImageLink = '-'.obs;
  RxString title = AMCText.categoryText.tr.obs;
  final List<Widget> bottomBarPages = [
    MainNewsScreen(),
    const MainOfferScreen(),
    const MainCategoryScreen(),
    const MainNotificationScreen(),
    const AppointmentScreen(),
  ];

  void drawerButton() => scaffoldkey.currentState!.isDrawerOpen == false
      ? scaffoldkey.currentState!.openDrawer()
      : scaffoldkey.currentState!.openEndDrawer();

  void profileButton() => Get.toNamed(UserProfileScreen.id);

  void titleFunction(index) {
    switch (index) {
      case 0:
        title.value = AMCText.appName.tr;
        break;
      case 1:
        title.value = AMCText.offerText.tr;
        break;
      case 2:
        title.value = AMCText.categoryText.tr;
        break;
      case 3:
        title.value = AMCText.notificationsText.tr;
        break;
      case 4:
        title.value = AMCText.appointmentText.tr;
        break;
    }
  }

  void changedPages(index) {
    titleFunction(index);
    navBarController.jumpTo(index);
    pageController.jumpToPage(index);
  }

  void userPorfileAPI() {
    http.get(APIURI.userProfileURI, headers: headerValue()).then((value) => {
          if (jsonDecode(value.body)[ApiParName.result] == 'ok')
            {
              userModel = UserModel.fromJson(jsonDecode(value.body)),
              profileImageLink.value =
                  ApiEndPoints.baseURL + userModel!.profilePicture,
              profileImageDownloadDone.value = true,
            }
          else if (jsonDecode(value.body)[ApiParName.result] == 'invalid')
            snackBar(
                title: jsonDecode(value.body)[ApiParName.message],
                image: notDoneImg1)
          else
            snackBarForError(),
        });
  }

  void userprofileWithoutAPI() {
    profileImageLink.value = ApiEndPoints.baseURL + getProfileImage();
    profileImageDownloadDone.value = true;
  }

  @override
  void onInit() {
    checkIfUserDataIsEmpty() ? userprofileWithoutAPI() : userPorfileAPI();
    titleFunction(Get.arguments[PageArgName.pageId]);
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
