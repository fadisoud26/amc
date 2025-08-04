import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/icon_constents.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/home_screen_controller.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyNavigationBar extends StatelessWidget {
  MyNavigationBar({
    super.key,
  });

  final HomeScreenController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return AnimatedNotchBottomBar(
      notchBottomBarController: homeController.navBarController,
      color: thePrimaryColor,
      itemLabelStyle: const TextStyle(color: theWhiteColor, fontSize: 10 ),
      showLabel: true,
      notchColor: thePrimaryColor,
      bottomBarItems: [
        BottomBarItem(
          inActiveItem: const Icon(inActiveNewsIcon, color: theWhiteColor),
          activeItem: const Icon(activeNewsIcon, color: theWhiteColor),
          itemLabel: AMCText.newsText.tr,
        ),
        BottomBarItem(
          inActiveItem: const Icon(inActiveOffersIcon, color: theWhiteColor),
          activeItem: const Icon(activeOffersIcon, color: theWhiteColor),
          itemLabel: AMCText.offerText.tr,
        ),
        BottomBarItem(
          inActiveItem: const Icon(inActiveCategoryIcon, color: theWhiteColor),
          activeItem: const Icon(activeCategoryIcon, color: theWhiteColor),
          itemLabel: AMCText.categoryText.tr,
        ),
        BottomBarItem(
          inActiveItem:
              const Icon(inActiveNotificationIcon, color: theWhiteColor),
          activeItem: const Icon(activeNotificationIcon, color: theWhiteColor),
          itemLabel: AMCText.notificationsText.tr,
        ),
        BottomBarItem(
          inActiveItem:
              const Icon(inActiveAppointmentIcon, color: theWhiteColor),
          activeItem: const Icon(activeAppointmentIcon, color: theWhiteColor),
          itemLabel: AMCText.appointmentText.tr,
        ),
      ],
      onTap: (index) => homeController.changedPages(index),
    );
  }
}
