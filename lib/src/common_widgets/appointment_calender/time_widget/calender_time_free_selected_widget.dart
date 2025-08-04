import 'package:alwadi_medical_center/src/common_widgets/appointment_calender/time_widget/calender_time_row_widget.dart';
import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/enum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalenderTimeFreeSelectedWidget extends StatelessWidget {
  const CalenderTimeFreeSelectedWidget({
    super.key,
    required this.time,
    this.timeState,
    required this.onTap,
  });

  final String time;
  final TimeState? timeState;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.27,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
        child: Expanded(
          child: Material(
            elevation: 4,
            color: timeState == TimeState.selected
                ? thePrimaryColor
                : theAccentColor,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: onTap,
              child: CalenderTimeRowWidget(timeState: timeState, time: time),
            ),
          ),
        ),
      ),
    );
  }
}
