import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/news_screen_controller.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/news_screen/instructions_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/news_screen/main_news_header_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/news_screen/news_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainNewsScreen extends StatelessWidget {
  MainNewsScreen({super.key});

  final NewsScreenController mainNewsController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        strokeWidth: 4,
        onRefresh: mainNewsController.refresshIndicator,
        child: Column(
          children: [
            MainNewsHeader(),
            sizedBoxH10,
            Obx(() {
              return (mainNewsController.left.value)
                  ? NewsScreen()
                  : InstructionsScreen();
            })
          ],
        ),
      ),
    );
  }
}
