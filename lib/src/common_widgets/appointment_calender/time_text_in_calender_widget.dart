
import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TimeTextInCalenderWidget extends StatelessWidget {
  const TimeTextInCalenderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(8, 15, 8, 0),
      child: Text(
        AMCText.timeText.tr,
        style: const TextStyle(
            color: thePrimaryColor,
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
