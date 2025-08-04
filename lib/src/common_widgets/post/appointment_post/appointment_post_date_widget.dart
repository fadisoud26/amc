import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/size_int.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppointmentPostDateWidget extends StatelessWidget {
  const AppointmentPostDateWidget({
    super.key,
    required this.day,
    required this.month,
    required this.year,
    required this.time,
    required this.isMedical,
  });

  final String day;
  final String month;
  final String year;
  final String time;
  final bool isMedical;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.2,
      child: Material(
        color: isMedical == false
            ? thePrimaryColor
            : Get.isDarkMode
                ? theDarkColor
                : theDefultFlutterWhiteColor,
        borderRadius: BorderRadius.circular(materialRadios),
        elevation: 4,
        child: SizedBox(
          height: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: Get.locale == const Locale('en')
                    ? const EdgeInsets.only(left: 7)
                    : const EdgeInsets.only(right: 7),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(TextSpan(
                        style: TextStyle(
                            color: isMedical ? thePrimaryColor : theWhiteColor),
                        children: [
                          TextSpan(
                              text: day, style: const TextStyle(fontSize: 20)),
                          TextSpan(text: AMCText.thText.tr),
                        ])),
                    Text(month,
                        style: TextStyle(
                            fontSize: 20,
                            color:
                                isMedical ? thePrimaryColor : theWhiteColor)),
                    Text('$time${AMCText.amTimeText.tr}',
                        style: TextStyle(
                            color:
                                isMedical ? thePrimaryColor : theWhiteColor)),
                  ],
                ),
              ),
              Padding(
                padding: Get.locale == const Locale('en')
                    ? const EdgeInsets.only(right: 5)
                    : const EdgeInsets.only(left: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      year.split('')[0],
                      style: TextStyle(
                          color: isMedical ? thePrimaryColor : theWhiteColor),
                    ),
                    Text(
                      year.split('')[1],
                      style: TextStyle(
                          color: isMedical ? thePrimaryColor : theWhiteColor),
                    ),
                    Text(
                      year.split('')[2],
                      style: TextStyle(
                          color: isMedical ? thePrimaryColor : theWhiteColor),
                    ),
                    Text(
                      year.split('')[3],
                      style: TextStyle(
                          color: isMedical ? thePrimaryColor : theWhiteColor),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
