import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/edge_insets_constents.dart';
import 'package:alwadi_medical_center/src/constents/size_int.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ListTitleInDrawerWidget extends StatelessWidget {
  const ListTitleInDrawerWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTap,
      this.ourSectionIcon});

  final String title;
  final IconData icon;
  final Function() onTap;
  final FaIcon? ourSectionIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Get.locale == const Locale('en')
          ? drawerListTilePadding
          : drawerListTilePaddingForArabic,
      child: ListTile(
        selectedColor: thePrimaryColor,
        iconColor:
            theSeconderyColor, //Get.isDarkMode ? theWhiteColor : theDarkColor,
        dense: true,
        selectedTileColor: thePrimaryColor,
        splashColor: thePrimaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(drawerListTileRadios)),
        onTap: onTap,
        contentPadding: drawerListTileContentPadding,
        minVerticalPadding: 0,
        title: Text(
          title,
          style: Get.textTheme.titleSmall,
        ),
        leading: ourSectionIcon ?? Icon(icon),
      ),
    );
  }
}
