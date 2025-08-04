
import 'package:alwadi_medical_center/src/constents/clipPath/user_profile_clip_path.dart';
import 'package:alwadi_medical_center/src/constents/size_int.dart';
import 'package:flutter/material.dart';

class ShimmerWidgetForPorfile extends StatelessWidget {
  const ShimmerWidgetForPorfile({
    super.key,
    required this.width,
    required this.height,
  });
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ClipPath(
        clipper: UserProfileClipPath(),
        child: const Material(
          elevation: buttonElevation,
        ),
      ),
    );
  }
}
