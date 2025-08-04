import 'package:alwadi_medical_center/src/screens/view/home_pages/home_screen.dart';
import 'package:alwadi_medical_center/src/utils/api/get_storage_text.dart';
import 'package:alwadi_medical_center/src/utils/api/page_argument_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SettingController extends GetxController {
  RxBool darkModeValue = Get.isDarkMode ? true.obs : false.obs;
  RxBool arabicValue = Get.locale == const Locale('en') ? false.obs : true.obs;
  void onChangedDarkMode(bool value) {
    darkModeValue.value = value;
    final s = GetStorage();
    s.write(GetStorageText.mode,
        value ? GetStorageText.darkMode : GetStorageText.lightMode);
    value == true
        ? Get.changeThemeMode(ThemeMode.dark)
        : Get.changeThemeMode(ThemeMode.light);

    Get.offAllNamed(HomeScreen.id, arguments: {PageArgName.pageId: 2});
  }

  void onChangedArabic(bool value) {
    arabicValue.value = value;
    final s = GetStorage();
    s.write(GetStorageText.lang, value ? "ar" : "en");
    Locale locale = Locale(value ? "ar" : "en");
    Get.updateLocale(locale);
  }
}
