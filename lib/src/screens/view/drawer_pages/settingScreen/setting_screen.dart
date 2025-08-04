import 'package:alwadi_medical_center/src/common_widgets/appBar/app_bar_back_with_logo/drawer_back_widget.dart';
import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/edge_insets_constents.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/screens/controller/drawer_screen_controller/setting_controller.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({super.key});
  static const String id = '/setting_screen';
  final SettingController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding:
                EdgeInsets.only(top: Get.height - 500, left: Get.width - 200),
            child: const Image(image: AssetImage(path0Img)),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: Get.height - 190, right: Get.width - 100),
            child: const Image(image: AssetImage(path3Img)),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBoxH30,
                DrawerBackWidget(title: AMCText.settingText.tr),
                Container(
                  padding: signupAndLoginBodyPadding,
                  child: Column(
                    children: [
                      Obx(
                        () => SwitchListTile(
                          activeColor: thePrimaryColor,
                          secondary: Icon(
                            Icons.dark_mode,
                            color:
                                Get.isDarkMode ? thePrimaryColor : theDarkColor,
                          ),
                          title: Text(
                            AMCText.darkModeText.tr,
                            style: TextStyle(
                                color: Get.isDarkMode
                                    ? theWhiteColor
                                    : theDarkColor),
                          ),
                          value: controller.darkModeValue.value,
                          onChanged: (value) =>
                              controller.onChangedDarkMode(value),
                        ),
                      ),
                      Obx(
                        () => SwitchListTile(
                          activeColor: thePrimaryColor,
                          secondary: Icon(
                            Icons.language_outlined,
                            color:
                                Get.isDarkMode ? thePrimaryColor : theDarkColor,
                          ),
                          title: Text(
                            AMCText.arabicText.tr,
                            style: TextStyle(
                                color: Get.isDarkMode
                                    ? theWhiteColor
                                    : theDarkColor),
                          ),
                          value: controller.arabicValue.value,
                          onChanged: (value) =>
                              controller.onChangedArabic(value),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
