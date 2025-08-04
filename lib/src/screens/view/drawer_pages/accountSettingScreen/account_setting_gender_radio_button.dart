import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/screens/controller/drawer_screen_controller/accountSettingController/account_setting_gender_radio_button_controller.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountSettingGenderRadioButtonWidget extends StatelessWidget {
  AccountSettingGenderRadioButtonWidget({
    super.key,
  });

  final AccountSettingGenderRadioButtonController radioController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AMCText.genderText.tr,
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
              onTap: () => radioController.firstRadioOnTaped(),
              child: Ink.image(
                image: const AssetImage(maleImg),
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
              onTap: () => radioController.secondRadioOnTaped(),
              child: Ink.image(
                image: const AssetImage(femaleImg),
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
