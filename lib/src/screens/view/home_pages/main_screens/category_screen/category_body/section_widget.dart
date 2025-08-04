import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget({
    super.key,
    required this.sectionName,
    required this.numberText,
    required this.isMedical,
    required this.onTap,
    required this.imageIconPath,
  });

  final String imageIconPath;
  final String sectionName;
  final String numberText;
  final bool isMedical;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: Get.width * 0.25,
        child: Material(
          color: isMedical ? null : thePrimaryColor,
          elevation: 4,
          borderRadius: BorderRadius.circular(10),
          child: Expanded(
            child: MaterialButton(
              onPressed: onTap,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  sizedBoxH10,
                  ImageIcon(
                    NetworkImage(imageIconPath),
                    size: 40,
                    color: isMedical ? thePrimaryColor : theWhiteColor,
                  ),
                  sizedBoxH10,
                  Text(
                    sectionName,
                    style: TextStyle(
                        color: isMedical ? thePrimaryColor : theWhiteColor,
                        fontFamily: 'Rubik'),
                  ),
                  sizedBoxH10,
                  Material(
                    color: isMedical
                        ? Get.isDarkMode
                            ? Colors.black.withOpacity(0.7)
                            : theWhiteColor.withOpacity(0.7)
                        : thePrimaryColor.withOpacity(0.7),
                    elevation: 2,
                    borderRadius: BorderRadius.circular(10),
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
                        child: Expanded(
                            child: Text(
                          isMedical
                              ? '$numberText ${AMCText.doctorText.tr}'
                              : '$numberText ${AMCText.deviceForSectionWidgetText.tr}',
                          style: TextStyle(
                            fontSize: 10,
                            color: isMedical ? thePrimaryColor : theWhiteColor,
                            fontFamily: 'Rubik',
                          ),
                        )),
                      ),
                    ),
                  ),
                  sizedBoxH10,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
