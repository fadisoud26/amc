import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RowSectionTypeTextWidget extends StatelessWidget {
  const RowSectionTypeTextWidget({
    super.key,
    required this.isMedical,
    required this.onTap,
  });

  final bool isMedical;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          isMedical
              ? AMCText.firstCategoryTitle.tr
              : AMCText.secoundCategoryTitle.tr,
          style: Get.textTheme.headlineLarge,
        ),
        TextButton(
            onPressed: onTap,
            child: Text(
              AMCText.seeAllText.tr,
              style: Get.textTheme.bodyLarge,
            )),
      ],
    );
  }
}
