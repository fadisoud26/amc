import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:flutter/material.dart';

class RatingDivider extends StatelessWidget {
  const RatingDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 1,
      color: theWhiteColor,
      endIndent: 20,
      indent: 20,
    );
  }
}
