import 'package:alwadi_medical_center/src/common_widgets/column_row_widget/tow_text_button_in_the_same_row/row_with_2_text_button_for_welcome_widget.dart';
import 'package:alwadi_medical_center/src/constents/clipPath/login_clip_path.dart';
import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/constents/size_int.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/signup_screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogInHeaderWidget extends StatelessWidget {
  const LogInHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipPath(
          clipper: LogInClipPath(),
          child: Container(
            color: thePrimaryColor,
            height: headerHeightInFormScreens,
            child: const Center(
              child: Image(image: AssetImage(loginImg)),
            ),
          ),
        ),
        RowWith2TextButtonForWelcomeWidget(
          decorationForLeft: true,
          onPassed: () {
            Get.offNamed(SignUpScreen.id);
          },
        ),
      ],
    );
  }
}
