import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColumnWithTextAndIconButtonWidget extends StatelessWidget {
  const ColumnWithTextAndIconButtonWidget({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  final String text;
  final Widget icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: Get.textTheme.titleSmall,
        ),
        sizedBoxH10,
        IconButton(
          onPressed: onTap,
          iconSize: 50,
          color: thePrimaryColor,
          icon: icon,
        ),
      ],
    );
  }
}
