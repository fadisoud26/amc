
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/screens/controller/welcom_screen_controller/singup_controller/radio_button_controller.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RadioButtonWidget extends StatelessWidget {
  const RadioButtonWidget({
    super.key,
    required this.isGender,
    required this.radioController,
  });

  final bool isGender;
  final RadioButtonController radioController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          (isGender) ? AMCText.genderText.tr: AMCText.relationShipText.tr,
          style: Get.textTheme.titleMedium,
        ),
        Obx(
          () => Material(
            shape: CircleBorder(
              side: radioController.firstSide.value,
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: InkWell(
              splashColor: Colors.black26,
              onTap: () => radioController.firstRadioOnTaped(isGender),
              child: Ink.image(
                image: (isGender)
                    ? const AssetImage(maleImg)
                    : const AssetImage(singleImg),
                fit: BoxFit.cover,
                height: 90,
                width: 90,
              ),
            ),
          ),
        ),
        Obx(
          () => Material(
            shape: CircleBorder(
              side: radioController.secondSide.value,
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: InkWell(
              splashColor: Colors.black26,
              onTap: () => radioController.secondRadioOnTaped(isGender),
              child: Ink.image(
                image: (isGender)
                    ? const AssetImage(femaleImg)
                    : const AssetImage(marridImg),
                fit: BoxFit.cover,
                height: 90,
                width: 90,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
