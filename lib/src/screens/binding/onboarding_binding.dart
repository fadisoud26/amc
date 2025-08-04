import 'package:alwadi_medical_center/src/screens/controller/welcom_screen_controller/onboarding_controller.dart';
import 'package:get/get.dart';

class OnBoardingBinding implements Bindings {

  @override
  void dependencies() {
   
    Get.lazyPut(() => OnboardingController());
  }
}
