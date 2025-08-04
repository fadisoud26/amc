import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/edge_insets_constents.dart';
import 'package:flutter/material.dart';

class ClinicAppBarTextWidget extends StatelessWidget {
  const ClinicAppBarTextWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: appBarTextPadding,
        child: Text(
          text,
          textAlign: TextAlign.right,
          overflow: TextOverflow.fade,
          style: const TextStyle(color: theWhiteColor, fontSize: 30),
        ),
      ),
    );
  }
}
