import 'package:alwadi_medical_center/src/constents/edge_insets_constents.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void snackBar({required String title, required String image}) {
  Get.snackbar(title, '',
      snackPosition: SnackPosition.BOTTOM,
      padding: snackBarPadding,
      margin: snackBarMargin,
      forwardAnimationCurve: Curves.easeOutBack,
      reverseAnimationCurve: Curves.easeOut,
      messageText: Image(image: AssetImage(image),height: 200,));
}

void snackBarForError() {
  Get.snackbar(AMCText.noInternetConection.tr, '',
      snackPosition: SnackPosition.BOTTOM,
      padding: snackBarPadding,
      margin: snackBarMargin,
      forwardAnimationCurve: Curves.easeOutBack,
      reverseAnimationCurve: Curves.easeOut,
      messageText: const Image(image: AssetImage(errorImg)));
}
