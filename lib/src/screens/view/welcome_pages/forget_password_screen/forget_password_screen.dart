import 'package:alwadi_medical_center/src/common_widgets/button/elevated_button_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/form_widget/password_form_field_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/form_widget/text_form_field_widget.dart';
import 'package:alwadi_medical_center/src/constents/icon_constents.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/constents/validation_constents.dart';
import 'package:alwadi_medical_center/src/screens/controller/welcom_screen_controller/forget_password_controller.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({super.key});

  final ForgetPasswordController forgetController =
      Get.put(ForgetPasswordController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AMCText.forgetPasswordTitle.tr,
              style: Get.textTheme.headlineSmall),
          Text(AMCText.forgetPasswordDetail.tr,
              style: Get.textTheme.labelLarge),
          sizedBoxH30,
          Form(
            key: forgetController.formKey,
            child: Column(
              children: [
                TextFormFieldWidget(
                  hintText: AMCText.emailInputFieldHintText.tr,
                  iconn: emailIcon,
                  textInputType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  textTED: forgetController.emailTED,
                  validator: (value) => emailValidator(value),
                ),
                sizedBoxH20,
                PasswordFormFieldWidget(
                  textInputAction: TextInputAction.done,
                  isNewPassword: true,
                  passwordTED: forgetController.passwordTED,
                ),
                sizedBoxH20,
                ElevatedButtonWidget(
                  withHeight: true,
                  onTap: () => forgetController.forgetPasswordButton(),
                  title: 'Reset Password',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
