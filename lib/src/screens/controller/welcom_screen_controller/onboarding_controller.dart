import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/login_screen/login_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/onboarding_screen/onboarding_widget.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnboardingController extends GetxController {
  final controler = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnboardingWidget(
      titleText: AMCText.firstSlideTextInOnboarding.tr,
      detailsText: AMCText.firstSlideDetailsTextInOnboarding.tr,
      imagePath: firstSlideImageInOnboarding,
      bgColor: firstSlideColorInOnboarding,
    ),
    OnboardingWidget(
      titleText: AMCText.secondSlideTextInOnboarding.tr,
      detailsText: AMCText.secondSlideDetailsTextInOnboarding.tr,
      imagePath: secondSlideImageInOnboarding,
      bgColor: secondSlideColorInOnboarding,
    ),
    OnboardingWidget(
      titleText: AMCText.thirdSlideTextInOnboarding.tr,
      detailsText: AMCText.thirdSlideDetailsTextInOnboarding.tr,
      imagePath: thirdSlideImageInOnboarding,
      bgColor: thirdSlideColorInOnboarding,
    ),
  ];

  /*getPref() {
    if (checkIfUserCheckedIn()) {
      Get.offNamed(HomeScreen.id, arguments: {PageArgName.pageId: 2});
    }
  }

  @override
  void onInit() {
    getPref();
    super.onInit();
  }*/

  void skip() {
    Get.toNamed(LogInScreen.id);
  }

  void animateToNextSlied() {
    if (controler.currentPage == 2) {
      Get.toNamed(LogInScreen.id);
      return;
    }
    int nextPage = controler.currentPage + 1;
    controler.animateToPage(page: nextPage);
  }

  void onPageChangedCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;
}
