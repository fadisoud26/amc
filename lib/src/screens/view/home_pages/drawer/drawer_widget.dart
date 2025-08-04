import 'package:alwadi_medical_center/src/constents/icon_constents.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/drawer_widget_controller.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/drawer/drawer_header.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/drawer/list_title_in_drawer_widget.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget({Key? key}) : super(key: key);

  final MyDrawerController drawerController = Get.find();
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: Get.locale == const Locale('en')
          ? const BorderRadius.only(topRight: Radius.circular(50.0))
          : const BorderRadius.only(topLeft: Radius.circular(50.0)),
      child: Drawer(
        child: Column(
          children: [
            MyDrawerHeader(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListTitleInDrawerWidget(
                        icon: helpIcon,
                        title: AMCText.helpText.tr,
                        onTap: drawerController.helpButton),
                    ListTitleInDrawerWidget(
                        icon: contactUsIcon,
                        title: AMCText.contactUsText.tr,
                        onTap: drawerController.contactButton),
                    ListTitleInDrawerWidget(
                        icon: accountSettingIcon,
                        title: AMCText.accountSettingText.tr,
                        onTap: drawerController.accountSettingButton),
                    ListTitleInDrawerWidget(
                        icon: accountSettingIcon,
                        ourSectionIcon: ourSectionIcon,
                        title: AMCText.ourSectionText.tr,
                        onTap: drawerController.ourSectionButton),
                    ListTitleInDrawerWidget(
                        icon: complaintsIcon,
                        title: AMCText.complaintsText.tr,
                        onTap: drawerController.complaintsButton),
                    ListTitleInDrawerWidget(
                        icon: settingIcon,
                        title: AMCText.settingText.tr,
                        onTap: drawerController.settingButton),
                  ],
                ),
              ),
            ),
            ListTitleInDrawerWidget(
                icon: logOutIcon,
                title: AMCText.logOutText.tr,
                onTap: drawerController.logOutButton),
          ],
        ),
      ),
    );
  }
}
