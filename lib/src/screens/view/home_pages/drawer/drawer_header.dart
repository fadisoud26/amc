import 'package:alwadi_medical_center/src/constents/edge_insets_constents.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/constents/size_int.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/drawer_widget_controller.dart';
import 'package:alwadi_medical_center/src/screens/view/profile_pages/user_profile/user_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDrawerHeader extends StatelessWidget {
  MyDrawerHeader({
    super.key,
  });

  final MyDrawerController drawerController = Get.find();

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      margin: drawerHeadetMargin,
      currentAccountPictureSize: const Size.square(80),
      decoration: BoxDecoration(
        borderRadius: Get.locale == const Locale('en')
            ? const BorderRadius.only(bottomLeft: Radius.circular(drawerHeaderRadios))
            : const BorderRadius.only(
                bottomRight: Radius.circular(drawerHeaderRadios)),
        image: const DecorationImage(
          image: AssetImage(backgroundImg),
          fit: BoxFit.cover,
        ),
      ),
      accountName: Padding(
        padding: drawerHeaderAccountPadding,
        child: Text(
          drawerController.userName.value,
          //style: TextStyle(fontSize: 20, color: theDarkColor),
        ),
      ),
      accountEmail: Padding(
        padding: drawerHeaderAccountPadding,
        child: Text(
          drawerController.number.value,
        ),
      ),
      currentAccountPicture: InkWell(
        onTap: () {
          Get.toNamed(UserProfileScreen.id);
        },
        child: CircleAvatar(
          radius: drawerHeaderAccountImageRadios,
          backgroundImage: NetworkImage(
            drawerController.profileImageLink.value,
          ),
        ),
      ),
    );
  }
}
