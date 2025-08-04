
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/appointment_screen_controller.dart';

import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/category_screens_controller/category_screen_controller.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/drawer_widget_controller.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/home_screen_controller.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/news_screen_controller.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/notifications_screen_controller.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/offer_screen_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenController());
    Get.lazyPut(() => NewsScreenController());
    
    Get.lazyPut(() => OfferScreenController());
    Get.lazyPut(() => CategoryScreenController());

    Get.lazyPut(() => NotificationScreenController());
    
    Get.lazyPut(() => AppointmentScreenController());
    Get.lazyPut(() => MyDrawerController());
  }
}
