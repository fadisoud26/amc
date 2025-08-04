import 'package:alwadi_medical_center/src/common_widgets/appointment_calender/time_widget/calender_time_row_widget.dart';
import 'package:alwadi_medical_center/src/constents/enum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalenderTimeTakenWidget extends StatelessWidget {
  const CalenderTimeTakenWidget({
    super.key,
    required this.time,
  });

  final String time;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.27,

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
        child: Expanded(
          // child: Material(
          // elevation: 4,
          //color: takenColor,
          //borderRadius: BorderRadius.circular(10),
          child: CalenderTimeRowWidget(
            timeState: TimeState.free, //timeState: TimeState.taken,
            time: time,
          ),
        ),
      ),
      // ),
    );
  }
}
