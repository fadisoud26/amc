import 'package:alwadi_medical_center/src/common_widgets/material_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_screen/account_setting_shimmer.dart';
import 'package:alwadi_medical_center/src/constents/icon_constents.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/constents/validation_constents.dart';
import 'package:alwadi_medical_center/src/screens/controller/drawer_screen_controller/accountSettingController/account_setting_controller.dart';
import 'package:alwadi_medical_center/src/screens/view/drawer_pages/accountSettingScreen/account_setting_gender_radio_button.dart';
import 'package:alwadi_medical_center/src/screens/view/drawer_pages/accountSettingScreen/account_setting_relation_radio_button.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/signup_screen/signup_widgets/signup_form/optional_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountSettingBodyWidget extends StatelessWidget {
  AccountSettingBodyWidget({
    super.key,
  });
  final AccountSettingController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(() => controller.isLoadingOldData.value
          ? const AccountSettingShimmerWidget()
          : SingleChildScrollView(
              child: Form(
                key: controller.formKey,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialWidget(
                        child: TextFormField(
                          controller: controller.phoneNumberTED,
                          keyboardType: TextInputType.phone,
                          //initialValue: controller.number.value,
                          decoration: InputDecoration(
                            hintText: controller.number.value,
                            prefixIcon: const Icon(phoneNumberIcon),
                          ),
                          style: Get.textTheme.titleMedium,
                          validator: (value) => phoneNumberValidatorForEditing(value),
                        ),
                      ),
                      sizedBoxH20,
                      MaterialWidget(
                        child: Obx(
                          () => TextFormField(
                            keyboardType: TextInputType.none,
                            decoration: InputDecoration(
                              hintStyle: Get.textTheme.titleMedium,
                              hintText: controller.dateBirthdayhintText.value,
                              prefixIcon: const Icon(birthdayDateIcon),
                            ),
                            readOnly: true,
                            onTap: () => controller.theDatePicker(),
                          ),
                        ),
                      ),
                      sizedBoxH20,
                      AccountSettingGenderRadioButtonWidget(),
                      sizedBoxH20,
                      AccountSettingRelationRadioButtonWidget(),
                      sizedBoxH20,
                      const OptionalDataWidget(forEdit: true),
                      sizedBoxH20,
                    ],
                  ),
                ),
              ),
            )),
    );
  }
}
