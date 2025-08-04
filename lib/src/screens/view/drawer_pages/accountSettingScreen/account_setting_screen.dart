import 'package:alwadi_medical_center/src/common_widgets/appBar/app_bar_back_with_logo/drawer_back_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/button/elevated_button_widget.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/screens/controller/drawer_screen_controller/accountSettingController/account_setting_controller.dart';
import 'package:alwadi_medical_center/src/screens/view/drawer_pages/accountSettingScreen/accout_setting_body_widget.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountSettingScreen extends StatelessWidget {
  AccountSettingScreen({super.key});
  static const String id = '/account_setting_screen';
  final AccountSettingController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedBoxH30,
          DrawerBackWidget(title: AMCText.accountSettingText.tr , isBigText: true,),
          AccountSettingBodyWidget(),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: Obx(() {
              if (controller.isLoadingForEditInfo.value == false) {
                return ElevatedButtonWidget(
                  onTap: controller.isLoadingOldData.value
                      ? () {}
                      : () {
                          controller.editeInformationButton();
                        },
                  withHeight: true,
                  title: AMCText.editProfileInformationText.tr,
                );
              }
              if (controller.isLoadingForEditInfo.value == true) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Center(child: Text(AMCText.doneText.tr));
            }),
          ),
        ],
      ),
    );
  }
}
