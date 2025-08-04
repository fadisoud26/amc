import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/edge_insets_constents.dart';
import 'package:alwadi_medical_center/src/constents/icon_constents.dart';
import 'package:flutter/material.dart';

class AppBarBackWidget extends StatelessWidget {
  const AppBarBackWidget({
    super.key,
    required this.onTap,
  });

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: appBarBackIconPadding,
      child: IconButton(
          onPressed: onTap,
          icon: const Icon(
            backIcon,
            color: theWhiteColor,
          )),
    );
  }
}
