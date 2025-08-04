import 'package:alwadi_medical_center/src/constents/size_int.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorDeviceNursePostImageWidget extends StatelessWidget {
  const DoctorDeviceNursePostImageWidget({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.2,
      child: Material(
        borderRadius: BorderRadius.circular(materialRadios),
        elevation: 4,
        child: SizedBox(
          height: double.infinity,
          child: Image.network(imagePath),
        ),
      ),
    );
  }
}
