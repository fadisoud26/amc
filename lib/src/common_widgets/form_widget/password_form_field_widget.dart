import 'package:alwadi_medical_center/src/common_widgets/form_widget/password_form_field_controller.dart';
import 'package:alwadi_medical_center/src/common_widgets/material_widget.dart';
import 'package:alwadi_medical_center/src/constents/icon_constents.dart';
import 'package:alwadi_medical_center/src/constents/validation_constents.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordFormFieldWidget extends StatelessWidget {
  PasswordFormFieldWidget({
    Key? key,
    required this.isNewPassword,
    required this.passwordTED,
    required this.textInputAction,
  }) : super(key: key);

  final bool isNewPassword;
  final TextEditingController passwordTED;
  final TextInputAction textInputAction;

  final PasswordFormFieldController passwordController = Get.find();
  @override
  Widget build(BuildContext context) {
    return MaterialWidget(
      child: Obx(
        () => TextFormField(
          controller: passwordTED,
          obscureText: passwordController.isPasswordVisible.value,
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            hintText: (isNewPassword == true)
                ? AMCText.newPasswordInputFieldHintText.tr
                : AMCText.passwordInputFieldHintText.tr,
            prefixIcon: const Icon(passwordIcon),
            suffixIcon: IconButton(
              onPressed: () =>
                  passwordController.clickOnSuffixIconInPassField(),
              icon: passwordController.isPasswordVisible.value
                  ? unvisibilEyeIcon
                  : visibilEyeIcon,
            ),
          ),
          style: Get.textTheme.titleMedium,
          validator: (value) => passwordValidator(value),
        ),
      ),
    );
  }
}
