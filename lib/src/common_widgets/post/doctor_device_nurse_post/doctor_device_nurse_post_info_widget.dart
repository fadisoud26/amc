import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/size_int.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorDeviceNursePostInfoWidget extends StatelessWidget {
  const DoctorDeviceNursePostInfoWidget({
    super.key,
    required this.discreption,
    required this.name,
  });

  final String name;
  final String discreption;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Material(
        borderRadius: BorderRadius.circular(materialRadios),
        elevation: 4,
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: Get.locale == const Locale('en')
                ? EdgeInsets.only(left: Get.width * 0.26)
                : EdgeInsets.only(right: Get.width * 0.26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10 , right: 10),
                  child: Text(
                    name,
                    style: Get.textTheme.headlineMedium,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10 , right: 10),
                  child: Text(
                    discreption,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Get.isDarkMode ? theWhiteColor : Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
