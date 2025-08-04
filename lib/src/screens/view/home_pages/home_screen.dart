import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/icon_constents.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/home_screen_controller.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/drawer/drawer_widget.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/navigation_bar/navigation_bar.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/page_material_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  static const String id = '/home_screen';

  final HomeScreenController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldkey,
      extendBody: true,
      backgroundColor: thePrimaryColor,
      appBar: AppBar(
        title: Obx(() => Text(controller.title.value)),
        backgroundColor: thePrimaryColor,
        elevation: 0,
        leading: IconButton(
          icon: leadingAppBarIcon,
          onPressed: controller.drawerButton,
        ),
        actions: [
          Obx(
            () => controller.profileImageDownloadDone.value
                ? MaterialButton(
                    onPressed: controller.profileButton,
                    shape: const CircleBorder(side: BorderSide.none),
                    child: CircleAvatar(
                        backgroundImage:
                            NetworkImage(controller.profileImageLink.value)))
                : MaterialButton(
                    onPressed: () {},
                    shape: const CircleBorder(side: BorderSide.none),
                    child: const CircleAvatar(
                        backgroundImage: AssetImage(profileImg))),
          ),
        ],
      ),
      drawer: SafeArea(child: DrawerWidget()),
      body: PageMaterialWidget(
        child: PageView(
          controller: controller.pageController,
          onPageChanged: (value) => controller.changedPages(value),
          children: List.generate(controller.bottomBarPages.length,
              (index) => controller.bottomBarPages[index]),
        ),
      ),
      bottomNavigationBar: MyNavigationBar(),
    );
  }
}
