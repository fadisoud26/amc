import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/edge_insets_constents.dart';
import 'package:alwadi_medical_center/src/constents/size_int.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClinicAppBarIconWidget extends StatelessWidget {
  const ClinicAppBarIconWidget({
    super.key,
    required this.imageIconPath,
  });

  final String imageIconPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: clinicAppBarBackIconPadding,
      child: SizedBox(
        height: double.infinity,
        width: Get.width * 0.3,
        child: ImageIcon(
          NetworkImage(imageIconPath),
          size: clinicAppBarIconSize,
          color: theWhiteColor,
        ),
      ),
    );
  }
}
