import 'package:alwadi_medical_center/src/localization/locale.dart';
import 'package:alwadi_medical_center/src/routing/rout_binding.dart';
import 'package:alwadi_medical_center/src/routing/rout_controller.dart';
import 'package:alwadi_medical_center/src/routing/routing.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/onboarding_screen/onboarding_screen.dart';
import 'package:alwadi_medical_center/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart'; 

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RoutController rootController = Get.put(RoutController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: rootController.getInitalMode(),
      defaultTransition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
      //smartManagement: SmartManagement.full,
      locale: rootController.getInitalLang(),
      translations: AMCLocale(),
      initialBinding: RoutBinding(),
      initialRoute:  OnboardingScreen.id,
      getPages: Routes.routes,
    );
  }
}
