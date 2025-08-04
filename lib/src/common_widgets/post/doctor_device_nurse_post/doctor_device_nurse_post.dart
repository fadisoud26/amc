import 'package:alwadi_medical_center/src/common_widgets/post/doctor_device_nurse_post/doctor_device_nurse_post_image_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/post/doctor_device_nurse_post/doctor_device_nurse_post_info_widget.dart';
import 'package:flutter/material.dart';

class DoctorDeviceNursePostWidget extends StatelessWidget {
  const DoctorDeviceNursePostWidget({
    super.key,
    required this.discreption,
    required this.name,
    required this.imagePath,
    required this.onTapImage,
    required this.onTap,
  });

  final String name;
  final String discreption;
  final String imagePath;
  final Function() onTap;
  final Function() onTapImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        height: 120,
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 2, right: 2),
            child: InkWell(
              onTap: onTap,
              child: DoctorDeviceNursePostInfoWidget(
                discreption: discreption,
                name: name,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 15 , right: 20),
            child: InkWell(
              onTap: onTapImage,
              child: DoctorDeviceNursePostImageWidget(
                imagePath: imagePath,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
