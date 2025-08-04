import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/icon_constents.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserProfileBodyWidget extends StatelessWidget {
  const UserProfileBodyWidget({
    super.key,
    required this.userName,
    required this.phoneNumber,
    required this.birthdayDate,
    required this.isMale,
    required this.isSingle,
  });

  final String userName;
  final String phoneNumber;
  final String birthdayDate;

  final bool isMale;
  final bool isSingle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 3),
          child: Text(userName, style: Get.textTheme.displaySmall),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              phoneNumberIcon,
              color: thePrimaryColor,
            ),
            sizedBoxW20,
            Text(phoneNumber, style: Get.textTheme.headlineLarge),
          ],
        ),
        sizedBoxH10,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              birthdayDateIcon,
              color: thePrimaryColor,
            ),
            sizedBoxW20,
            Text(birthdayDate, style: Get.textTheme.headlineLarge),
          ],
        ),
        sizedBoxH20,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Material(
              shape: const CircleBorder(
                side: BorderSide(color: thePrimaryColor, width: 2),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image(
                image: isMale
                    ? const AssetImage(maleImg)
                    : const AssetImage(femaleImg),
                fit: BoxFit.cover,
                width: 70,
                height: 70,
              ),
            ),
            sizedBoxW20,
            Material(
              shape: const CircleBorder(
                side: BorderSide(color: thePrimaryColor, width: 2),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image(
                image: isSingle
                    ? const AssetImage(singleImg)
                    : const AssetImage(marridImg),
                fit: BoxFit.cover,
                width: 70,
                height: 70,
              ),
            ),
           
          ],
        ),
        
      ],
    );
  }
}
