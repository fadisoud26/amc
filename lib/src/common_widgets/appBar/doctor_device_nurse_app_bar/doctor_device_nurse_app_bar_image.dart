
import 'package:alwadi_medical_center/src/common_widgets/appBar/normal_app_bar_back_widget/normal_app_bar_back_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorDeviceNurseAppBarImage extends StatelessWidget {
  const DoctorDeviceNurseAppBarImage({
    super.key,
    required this.onTap,
    required this.imagePath,
  });

  final Function() onTap;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
          width: Get.width * 0.5,
          height: 260,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(50),
            ),
            child: Image.network(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      AppBarBackWidget(onTap: onTap),
    ]);
  }
}
