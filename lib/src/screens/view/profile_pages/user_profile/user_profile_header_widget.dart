import 'package:alwadi_medical_center/src/constents/clipPath/user_profile_clip_path.dart';
import 'package:alwadi_medical_center/src/screens/view/profile_pages/prorile_back_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserProfileHeaderWidget extends StatelessWidget {
  const UserProfileHeaderWidget({
    super.key,
    required this.onTapBack,
    required this.imagePath,
  });

  final Function() onTapBack;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: Get.width,
          alignment: Alignment.topCenter,
          child: FittedBox(
            fit: BoxFit.fill,
            child: ClipPath(
              clipper: UserProfileClipPath(),
              child: Align(
                // alignment: Alignment(-0.5, -0.2),
                // widthFactor: 0.6,
                heightFactor: 0.7,
                child: Image.network(imagePath),
              ),
            ),
          ),
        ),
        ProfileBackIconWidget(onTapBack: onTapBack)
      ],
    );
  }
}
