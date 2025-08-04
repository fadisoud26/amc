import 'package:alwadi_medical_center/src/constents/size_int.dart';
import 'package:flutter/material.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({super.key, required this.width, required this.height});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Material(
        elevation: buttonElevation,
        borderRadius: BorderRadius.circular(shimmerRadios),
      ),
    );
  }
}
