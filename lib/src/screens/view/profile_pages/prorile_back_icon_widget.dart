
import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/edge_insets_constents.dart';
import 'package:flutter/material.dart';

class ProfileBackIconWidget extends StatelessWidget {
  const ProfileBackIconWidget({
    super.key,
    required this.onTapBack,
  });

  final Function() onTapBack;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: clinicAppBarBackIconPadding,
      child: IconButton(
          color: thePrimaryColor,
          iconSize: 40,
          onPressed: onTapBack,
          icon: const Icon(Icons.arrow_back_ios_new)),
    );
  }
}
