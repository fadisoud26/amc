import 'package:alwadi_medical_center/src/common_widgets/column_row_widget/tow_text_button_in_the_same_row/row_with_2_text_button_for_welcome_widget.dart';
import 'package:alwadi_medical_center/src/constents/clipPath/sign_clip_path.dart';
import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/constents/size_int.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpHeaderWidget extends StatelessWidget {
  const SignUpHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipPath(
          clipper: SignUpClipPath(),
          child: Container(
            color: thePrimaryColor,
            height: headerHeightInFormScreens,
            child: const Center(
              child: Image(image: AssetImage(sinupImg)),
            ),
          ),
        ),
        RowWith2TextButtonForWelcomeWidget(
          decorationForLeft: false,
          onPassed: () {
            Get.offNamed(LogInScreen.id);
          },
        ),
      ],
    );
  }
}
