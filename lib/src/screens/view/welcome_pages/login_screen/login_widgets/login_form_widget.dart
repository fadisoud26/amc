import 'package:alwadi_medical_center/src/common_widgets/button/elevated_button_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/form_widget/password_form_field_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/form_widget/text_form_field_widget.dart';
import 'package:alwadi_medical_center/src/constents/edge_insets_constents.dart';
import 'package:alwadi_medical_center/src/constents/icon_constents.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/constents/validation_constents.dart';
import 'package:alwadi_medical_center/src/screens/controller/welcom_screen_controller/login_screen_controller.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogInFormWidget extends StatelessWidget {
  LogInFormWidget({
    super.key,
  });

  final LogInScreenController loginFormController = Get.find();
  @override
  Widget build(BuildContext context) {
    //LogInScreenController loginFormController = Get.find();
    return Form(
      key: loginFormController.formKey,
      child: Container(
        padding: formPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormFieldWidget(
              hintText: AMCText.userNameInputFieldHintText.tr,
              iconn: userNameIcon,
              textInputType: TextInputType.name,
              textInputAction: TextInputAction.next,
              textTED: loginFormController.userNameTED,
              validator: (value) => textValidator(value),
            ),
            sizedBoxH20,
            PasswordFormFieldWidget(
              textInputAction: TextInputAction.done,
              isNewPassword: false,
              passwordTED: loginFormController.passwordTED,
            ),
            sizedBoxH20,
            Obx(
              () {
                if (loginFormController.isDataLoading.value == false) {
                  return ElevatedButtonWidget(
                      withHeight: true,
                      onTap: () => loginFormController.logInButton(),
                      title: AMCText.logIn.tr);
                }
                if (loginFormController.isDataLoading.value == true) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return  Center(child: Text(AMCText.doneText.tr));
              },
            ),
          ],
        ),
      ),
    );
  }
}
