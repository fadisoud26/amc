import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/appointment_screen_controller.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/appointment_screen/appointment_header_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/appointment_screen/comming_appointment_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/appointment_screen/previous_appointment_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InsideAppointmentScreen(),
    );
  }
}

class InsideAppointmentScreen extends StatelessWidget {
  InsideAppointmentScreen({super.key});

  final AppointmentScreenController appointmentController = Get.find();

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      strokeWidth: 4,
      onRefresh: appointmentController.refresshIndicator,
      child: Column(
        children: [
          AppointmentHeader(),
          sizedBoxH20,
          Obx(() {
            return (appointmentController.left.value)
                ? CommingAppointmentScreen()
                : PreviousAppointmentScreen();
          })
        ],
      ),
    );
  }
}
