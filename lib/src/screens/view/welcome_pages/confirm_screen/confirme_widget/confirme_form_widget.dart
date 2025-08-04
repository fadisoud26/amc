import 'package:alwadi_medical_center/src/common_widgets/button/elevated_button_widget.dart';
import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/constents/validation_constents.dart';
import 'package:alwadi_medical_center/src/screens/controller/welcom_screen_controller/confirme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ConfirmeFormWidget extends StatelessWidget {
  ConfirmeFormWidget({
    super.key,
  });
  final ConfirmeController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: c.formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
            child: PinCodeTextField(
              controller: c.confirmeTED,
              keyboardType: TextInputType.number,
              length: 6,
              errorTextSpace: 30,
              animationType: AnimationType.fade,
              animationDuration: const Duration(milliseconds: 300),
              appContext: context,
              onChanged: (value) {},
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.underline,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 40,
                inactiveColor: theGrayColor,
                activeColor: thePrimaryColor,
                selectedColor: theGrayColor,
              ),
              cursorColor: thePrimaryColor,
              validator: (value) {
                return pinCodeTextFieldValidator(value);
              },
            ),
          ),
          ElevatedButtonWidget(
              onTap: () {}, title: 'Confirm', withHeight: true),
          sizedBoxH20,
        ],
      ),
    );
  }
}
