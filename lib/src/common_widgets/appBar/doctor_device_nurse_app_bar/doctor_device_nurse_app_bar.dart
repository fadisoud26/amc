import 'package:alwadi_medical_center/src/common_widgets/appBar/doctor_device_nurse_app_bar/doctor_device_nurse_app_bar_column.dart';
import 'package:alwadi_medical_center/src/common_widgets/appBar/doctor_device_nurse_app_bar/doctor_device_nurse_app_bar_image.dart';
import 'package:alwadi_medical_center/src/constents/border_radios_constents.dart';
import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:flutter/material.dart';

class DoctorDeviceNurseAppBar extends StatelessWidget {
  const DoctorDeviceNurseAppBar({
    super.key,
    required this.information,
    required this.name,
    required this.specialization,
    required this.onTap,
    required this.onTapSeeMore,
    required this.imagePath,
    this.deviceNameIfForNurse,
    this.isDevice,
  });
  final String specialization;
  final String name;
  final String information;
  final String imagePath;
  final String? deviceNameIfForNurse;
  final Function() onTap;
  final Function() onTapSeeMore;
  final bool? isDevice;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: appBarBorderRadius,
          ),
          color: thePrimaryColor,
        ),
        height: 270,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DoctorDeviceNurseAppBarImage(
              onTap: onTap,
              imagePath: imagePath,
            ),
            DoctorDeviceNurseAppBarColumn(
              specialization: specialization,
              name: name,
              information: information,
              deviceNameIfForNurse: deviceNameIfForNurse,
              onTapSeeMore: onTapSeeMore,
              isDevice: isDevice,
            )
          ],
        ));
  }
}
