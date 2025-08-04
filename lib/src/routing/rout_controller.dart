
import 'package:alwadi_medical_center/src/utils/api/get_storage_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RoutController extends GetxController {
  

  Locale getInitalLang() {
    final s = GetStorage();
    return s.read(GetStorageText.lang) == null
        ? const Locale('en')
        : Locale(s.read(GetStorageText.lang));
  }

  ThemeMode getInitalMode() {
    final s = GetStorage();
    return s.read(GetStorageText.mode) == null ||
            s.read(GetStorageText.mode) != GetStorageText.darkMode
        ? ThemeMode.light
        : ThemeMode.dark;
  }



}
