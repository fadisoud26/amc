import 'package:alwadi_medical_center/src/common_widgets/post/appointment_post/appointment_post_date_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/post/appointment_post/appointment_post_info_widget.dart';
import 'package:flutter/material.dart';

class AppointmentPostWidget extends StatelessWidget {
  const AppointmentPostWidget({
    super.key,
    this.onTapEdit,
    this.onTapDelete,
    required this.day,
    required this.month,
    required this.year,
    required this.time,
    this.isComming,
    required this.name,
    required this.doctorOrNursName,
    this.deviceName,
  });

  final String name;
  final String doctorOrNursName;
  final String? deviceName;
  final String day;
  final String month;
  final String year;
  final String time;
  final Function()? onTapEdit;
  final Function()? onTapDelete;
  final bool? isComming;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        height: 120,
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 2, right: 2),
            child: AppointmentPostInfoWidget(
              onTapEdit: onTapEdit ?? () {},
              onTapDelete: onTapDelete ?? () {},
              isComming: isComming,
              deviceName: deviceName ?? ' ',
              doctorOrNursName: doctorOrNursName,
              name: name,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 15 , right: 20),
            child: AppointmentPostDateWidget(
              day: day,
              month: month,
              year: year,
              time: time,
              isMedical: deviceName == null ? true : false,
            ),
          ),
        ]),
      ),
    );
  }
}
