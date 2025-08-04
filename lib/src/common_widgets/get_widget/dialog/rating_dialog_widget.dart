import 'package:alwadi_medical_center/src/common_widgets/get_widget/dialog/rating_bar_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/get_widget/dialog/rating_divider_widget.dart';
import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/enum.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/notifications_screen_controller.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RatingDialogWidget extends StatelessWidget {
  const RatingDialogWidget({
    super.key,
    required this.id,
    required this.doctorAppointment,
    required this.controller,
  });
  final String id;
  final bool doctorAppointment;

  final NotificationScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: Get.width * 0.8,
        // height: Get.height * 0.6,
        child: Material(
            elevation: 10,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(100),
                bottomLeft: Radius.circular(100)),
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(100),
                      bottomLeft: Radius.circular(100)),
                  image: DecorationImage(
                      image: AssetImage(backgroundImg), fit: BoxFit.fill)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          AMCText.evaluationForRatingText.tr,
                          style: const TextStyle(
                              color: theWhiteColor, fontSize: 24),
                        ),
                      ),
                    ),
                    RatingBarWidget(
                        evaluation: Evaluation.cleanless,
                        controller: controller),
                    const RatingDivider(),
                    RatingBarWidget(
                        evaluation: Evaluation.reseption,
                        controller: controller),
                    const RatingDivider(),
                    RatingBarWidget(
                        evaluation: Evaluation.therapisting,
                        controller: controller),
                    const RatingDivider(),
                    RatingBarWidget(
                        evaluation: Evaluation.treatmentOrMedicalStaff,
                        controller: controller),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: () => controller.onTapRate(
                              id: id,
                              doctorAppointment: doctorAppointment,
                              cleanless: controller.cleanlessRate.value,
                              receptionRate: controller.reseptionRate.value,
                              therapistingRate:
                                  controller.therapistingRate.value,
                              treatmentOdMedicalStaff:
                                  controller.treatmentOdMedicalStaffRate.value),
                          child: Text(
                            AMCText.okText.tr,
                            style: const TextStyle(
                                color: theWhiteColor, fontSize: 24),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
