import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/size_int.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppointmentPostInfoWidget extends StatelessWidget {
  const AppointmentPostInfoWidget({
    super.key,
    required this.name,
    required this.onTapEdit,
    required this.onTapDelete,
    this.isComming,
    required this.deviceName,
    required this.doctorOrNursName,
  });

  final String name;
  final String doctorOrNursName;
  final String deviceName;

  final Function() onTapEdit;
  final Function() onTapDelete;
  final bool? isComming;

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
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    name,
                    style: const TextStyle(
                        color: thePrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Rubik'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    '$doctorOrNursName     $deviceName',
                    style: TextStyle(
                        color: Get.isDarkMode ? theWhiteColor : Colors.black,
                        fontFamily: 'Rubik'),
                  ),
                ),
                isComming ?? false
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: onTapEdit,
                              child: Text(
                                AMCText.editText.tr,
                                style: const TextStyle(
                                    color: thePrimaryColor,
                                    fontFamily: 'Rubik'),
                              )),
                          TextButton(
                              onPressed: onTapDelete,
                              child: Text(AMCText.deleteText.tr,
                                  style: const TextStyle(
                                      color: thePrimaryColor,
                                      fontFamily: 'Rubik'))),
                          sizedBoxW10,
                        ],
                      )
                    : const Text(''),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
