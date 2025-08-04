import 'package:alwadi_medical_center/src/common_widgets/button/outlined_button_widget.dart';
import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/edge_insets_constents.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorDeviceNurseAppBarColumn extends StatelessWidget {
  const DoctorDeviceNurseAppBarColumn({
    super.key,
    required this.name,
    required this.specialization,
    required this.information,
    required this.deviceNameIfForNurse,
    required this.onTapSeeMore,
    required this.isDevice,
  });

  final String specialization;
  final String name;
  final String information;
  final String? deviceNameIfForNurse;
  final Function() onTapSeeMore;
  final bool? isDevice;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: appBarTextPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                name,
              
                style: const TextStyle(color: theWhiteColor, fontSize: 24),
              ),
            ),
            isDevice != null
                ? const Text('')
                : Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                      specialization,
                    
                      style: const TextStyle(color: theWhiteColor, fontSize: 18),
                    ),
                ),
            sizedBoxH10,
            Expanded(
              child: Text(
                information,
                textAlign: TextAlign.right,
                overflow: TextOverflow.fade,
                style: const TextStyle(color: theWhiteColor, fontSize: 18),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    (deviceNameIfForNurse != null)
                        ? Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Text(
                              '${AMCText.deviceText.tr} $deviceNameIfForNurse',
                              style: const TextStyle(
                                  color: theWhiteColor, fontSize: 18),
                            ),
                          )
                        : const Text(''),
                    OutlinedButtonWidget(
                      onTap: onTapSeeMore,
                      isPinkBackground: 1,
                      title: AMCText.seeMoreText.tr,
                      width: Get.width * 0.3,
                      forAppBar: true,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
