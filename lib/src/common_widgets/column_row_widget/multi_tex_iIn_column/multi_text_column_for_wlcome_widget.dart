
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/signup_screen/signup_screen.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MultiTextColumnForWelcomeWidget extends StatelessWidget {
  const MultiTextColumnForWelcomeWidget({
    super.key,
    required this.isLogin,
  });

  final bool isLogin;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          isLogin ? AMCText.loginFooterLine1Text.tr : AMCText.signupFooterLine1Text.tr,
          style: Get.textTheme.labelLarge,
        ),
        TextButton(
          onPressed: (isLogin) ? () => Get.offNamed(SignUpScreen.id) : () {},
          child: Text.rich(
            TextSpan(
              text: isLogin ? AMCText.signUp.tr : AMCText.signupFooterline2column1Text.tr,
              style: Get.textTheme.bodyMedium,
              children: [
                TextSpan(
                  text: isLogin
                      ? AMCText.loginFooterline2column2Text.tr
                      : AMCText.signupFooterLine2column2Text.tr,
                  style: Get.textTheme.labelLarge,
                ),
                TextSpan(text: isLogin ? '' : AMCText.signupFooterLine2column3Text.tr),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
