import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/edge_insets_constents.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({
    super.key,
    required this.titleText,
    required this.detailsText,
    required this.imagePath,
    required this.bgColor,
  });

  final String titleText;
  final String detailsText;
  final String imagePath;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    Color makeBackgroundColor() {
      return (Get.isDarkMode == true && bgColor == theWhiteColor)
          ? theDarkColor
          : bgColor;
    }

    TextStyle? makeTextColor() {
      return (bgColor == theDarkColor || bgColor == theWhiteColor)
          ? Get.textTheme.displaySmall
          : Get.textTheme.displaySmall?.apply(color: theWhiteColor);
    }

    return Container(
      color: makeBackgroundColor(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          sizedBoxH10,
          Padding(
            padding: onboardingSlidPadding,
            child: Column(
              children: [
                Text(
                  titleText,
                  style: makeTextColor(),
                  textAlign: TextAlign.center,
                ),
                Text(
                  detailsText,
                  style: (bgColor == theDarkColor || bgColor == theWhiteColor)
                      ? Get.textTheme.titleLarge
                      : Get.textTheme.titleLarge?.apply(color: theWhiteColor),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Image(
            image: AssetImage(imagePath),
            height: Get.height / 2,
          ),
          sizedBoxH50,
          sizedBoxH30,
        ],
      ),
    );
  }
}
