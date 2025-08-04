import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationPostInfoWidget extends StatelessWidget {
  const NotificationPostInfoWidget({
    super.key,
    required this.sectionName,
    required this.doctorName,
    required this.deviceName,
    required this.fullDate,
  });

  final String sectionName;
  final String doctorName;
  final String deviceName;
  final String fullDate;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RichText(
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
                style: const TextStyle(
                    color: thePrimaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Rubik'),
                text: sectionName),
          ),
          RichText(
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
                style: TextStyle(
                    color: Get.isDarkMode ? theWhiteColor : Colors.black,
                    fontFamily: 'Rubik'),
                text: '$doctorName    $deviceName'),
          ),
          Text(
            fullDate,
            style: TextStyle(
                color: Get.isDarkMode ? theWhiteColor : Colors.black,
                fontFamily: 'Rubik'),
          ),
        ],
      ),
    );
  }
}
