import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/enum.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalenderTimeRowWidget extends StatelessWidget {
  const CalenderTimeRowWidget({
    super.key,
    required this.timeState,
    required this.time,
  });

  final TimeState? timeState;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.av_timer,
          color: timeState == TimeState.free
              ? theDarkColor
              : timeState == TimeState.selected
                  ? theWhiteColor
                  : Get.isDarkMode
                      ? theWhiteColor
                      : theDarkColor,
        ),
        Text.rich(
          TextSpan(
            style: TextStyle(
              color: timeState == TimeState.free
                  ? theDarkColor
                  : timeState == TimeState.selected
                      ? theWhiteColor
                      : Get.isDarkMode
                          ? theWhiteColor
                          : theDarkColor,
            ),
            children: [
              TextSpan(text: time),
              TextSpan(
                  text: time.startsWith('08') ||
                          time.startsWith('09') ||
                          time.startsWith('10') ||
                          time.startsWith('11')
                      ? AMCText.amTimeText.tr
                      : AMCText.pmTimeText.tr),
            ],
          ),
        ),
      ],
    );
  }
}
