import 'package:alwadi_medical_center/src/common_widgets/appBar/clinic_app_bar/clinic_app_bar_icon_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/appBar/clinic_app_bar/clinic_app_bar_text_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/appBar/normal_app_bar_back_widget/normal_app_bar_back_widget.dart';
import 'package:alwadi_medical_center/src/constents/border_radios_constents.dart';
import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/size_int.dart';
import 'package:flutter/material.dart';

class ClinicAppBar extends StatelessWidget {
  const ClinicAppBar({
    super.key,
    required this.text,
    required this.onTap,
    required this.imageIconPath,
  });

  final String text;
  final String imageIconPath;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: appBarBorderRadius,
          ),
          color: thePrimaryColor,
        ),
        height: clinicAppBarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarBackWidget(onTap: onTap),
            ClinicAppBarIconWidget(imageIconPath: imageIconPath),
            ClinicAppBarTextWidget(text: text)
          ],
        ));
  }
}
