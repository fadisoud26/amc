import 'package:alwadi_medical_center/src/common_widgets/button/elevated_button_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/button/outlined_button_widget.dart';
import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/icon_constents.dart';
import 'package:alwadi_medical_center/src/screens/controller/welcom_screen_controller/onboarding_controller.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  static const String id = '/onboarding_screen';

   OnboardingScreen({Key? key}) : super(key: key);

  final OnboardingController obController = Get.find();

  @override
  Widget build(BuildContext context) {
    //final obController = OnboardingController();
   // OnboardingController obController = Get.find();

    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          LiquidSwipe(
            pages: obController.pages,
            liquidController: obController.controler,
            onPageChangeCallback: obController.onPageChangedCallback,
            slideIconWidget: liquidSwipeSlideIcon,
            positionSlideIcon: 0.7,
            enableSideReveal: true,
            enableLoop: false,
          ),
          Positioned(
            bottom: 40,
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Obx(
                  () => OutlinedButtonWidget(
                    onTap: () => obController.skip(),
                    isPinkBackground: obController.currentPage.value,
                    title: AMCText.skipText.tr,
                    width: Get.width * 0.3,
                  ),
                ),
                Obx(
                  () => AnimatedSmoothIndicator(
                    activeIndex: obController.currentPage.value,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: thePrimaryColor,
                      dotColor: theAccentColor,
                      dotHeight: 10,
                      dotWidth: 10,
                    ),
                  ),
                ),
                ElevatedButtonWidget(
                  onTap: () => obController.animateToNextSlied(),
                  title: AMCText.nextText.tr,
                  width: Get.width * 0.3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
