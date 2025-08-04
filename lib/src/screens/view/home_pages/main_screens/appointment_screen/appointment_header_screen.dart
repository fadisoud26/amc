
import 'package:alwadi_medical_center/src/common_widgets/column_row_widget/tow_text_button_in_the_same_row/row_with_2_text_button_for_home_widget.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/appointment_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppointmentHeader extends StatelessWidget {
  AppointmentHeader({
    super.key,
  });

  final AppointmentScreenController appointmentController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RowWith2TextButtonForHomeWidget(
        decorationForLeft: appointmentController.left.value,
        forNews: false,
        onPassed: () {
          appointmentController.left.value = !appointmentController.left.value;
        },
      ),
    );
  }
}
