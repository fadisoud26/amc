import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/enum.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/notifications_screen_controller.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class RatingBarWidget extends StatelessWidget {
  const RatingBarWidget(
      {super.key, required this.evaluation, required this.controller});
  final Evaluation evaluation;
  final NotificationScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
            evaluation == Evaluation.cleanless
                ? AMCText.cleanless.tr
                : evaluation == Evaluation.reseption
                    ? AMCText.reseption.tr
                    : evaluation == Evaluation.therapisting
                        ? AMCText.therapisting.tr
                        : AMCText.medicalService.tr,
            style: const TextStyle(color: theWhiteColor, fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: RatingBar.builder(
            itemSize: 30,
            initialRating: evaluation == Evaluation.cleanless
                ? controller.cleanlessRate.value 
                : evaluation == Evaluation.reseption
                    ? controller.reseptionRate.value 
                    : evaluation == Evaluation.therapisting
                        ? controller.therapistingRate.value
                        : controller.treatmentOdMedicalStaffRate.value
                            ,
            minRating: 0,
            itemCount: 5,
            itemBuilder: (context, _) => const ImageIcon(
              AssetImage(appLogoWhite),
              color: theWhiteColor,
            ),
            onRatingUpdate: (rating) {
              switch (evaluation) {
                case Evaluation.cleanless:
                  controller.cleanlessRate.value = rating ;
                  break;
                case Evaluation.reseption:
                  controller.reseptionRate.value = rating ;
                  break;
                case Evaluation.therapisting:
                  controller.therapistingRate.value = rating ;

                  break;
                case Evaluation.treatmentOrMedicalStaff:
                  controller.treatmentOdMedicalStaffRate.value = rating;
                  break;
              }
            },
          ),
        ),
      ],
    );
  }
}
