import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/duration_constents.dart';
import 'package:alwadi_medical_center/src/constents/size_int.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin MyBottomSheet {
  static Future<dynamic> bottomSheet({required Widget child}) {
    return Get.bottomSheet(
      enterBottomSheetDuration: bottomSheetDuration,
      exitBottomSheetDuration: bottomSheetDuration,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(bottomSheetRadios),
          topRight: Radius.circular(bottomSheetRadios),
        ),
      ),
      backgroundColor: Get.isDarkMode ? theDarkColor : theWhiteColor,
      Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(bottomSheetRadios),
              topRight: Radius.circular(bottomSheetRadios),
            ),
          ),
          padding: const EdgeInsets.all(theDefaultSize),
          child: child),
    );
  }
}


/*
void seeAllBottomSheet() {
  Get.bottomSheet(
    enterBottomSheetDuration: bottomSheetDuration,
    exitBottomSheetDuration: bottomSheetDuration,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(bottomSheetRadios),
      ),
    ),
    backgroundColor: Get.isDarkMode ? theDarkColor : theWhiteColor,
    Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(bottomSheetRadios),
          ),
        ),
        padding: const EdgeInsets.all(theDefaultSize),
        child: const SeeAllCategoryScreen()),
  );
}
*/