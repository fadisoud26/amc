import 'package:alwadi_medical_center/src/common_widgets/button/elevated_button_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/form_widget/password_form_field_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/form_widget/text_form_field_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/left_align_widget.dart';
import 'package:alwadi_medical_center/src/constents/edge_insets_constents.dart';
import 'package:alwadi_medical_center/src/constents/icon_constents.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/constents/validation_constents.dart';
import 'package:alwadi_medical_center/src/screens/controller/welcom_screen_controller/singup_controller/radio_button_controller.dart';
import 'package:alwadi_medical_center/src/screens/controller/welcom_screen_controller/singup_controller/signup_screen_controller.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/signup_screen/signup_widgets/signup_form/date_form/date_formf_field_widget.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/signup_screen/signup_widgets/signup_form/optional_data_widget.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/signup_screen/signup_widgets/signup_form/radio_form/radio_button_widget.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    RadioButtonController radioController = Get.find();
    RadioButtonController radio2Controller = Get.find();
    SignUpScreenController signupFormController = Get.find();
    return Form(
        key: signupFormController.formKey,
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
                textTED: signupFormController.userNameTED,
                validator: (value) => textValidator(value),
              ),
              sizedBoxH20,
              PasswordFormFieldWidget(
                textInputAction: TextInputAction.done,
                isNewPassword: false,
                passwordTED: signupFormController.passwordTED,
              ),
              sizedBoxH20,
              RadioButtonWidget(
                isGender: true,
                radioController: radioController,
              ),
              sizedBoxH20,
              RadioButtonWidget(
                isGender: false,
                radioController: radio2Controller,
              ),
              sizedBoxH20,
              TextFormFieldWidget(
                hintText: AMCText.phoneNumberInputFieldHintText.tr,
                iconn: phoneNumberIcon,
                textInputType: TextInputType.phone,
                textInputAction: TextInputAction.done,
                textTED: signupFormController.phoneNumberTED,
                validator: (value) => phoneNumberValidator(value),
              ),
              sizedBoxH20,
              DateFormFeildWidget(),
              sizedBoxH20,
              LeftAlignWidget(text: AMCText.optionalDataText.tr),
              sizedBoxH10,
              const OptionalDataWidget(),
              sizedBoxH20,
              Obx(
                () {
                  if (signupFormController.isDataLoading.value == false) {
                    return ElevatedButtonWidget(
                        withHeight: true,
                        onTap: () => signupFormController.signUpButton(),
                        title: AMCText.signUp.tr);
                  }
                  if (signupFormController.isDataLoading.value == true) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return  Center(child: Text(AMCText.doneText.tr));
                },
              ),
            ],
          ),
        ));
  }
}
