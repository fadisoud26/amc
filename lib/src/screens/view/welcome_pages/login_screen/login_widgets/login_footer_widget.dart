import 'package:alwadi_medical_center/src/common_widgets/column_row_widget/multi_tex_iIn_column/multi_text_column_for_wlcome_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/get_widget/bottom_sheet.dart';
import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/forget_password_screen/forget_password_screen.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogInFooterWidget extends StatelessWidget {
  const LogInFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        sizedBoxH30,
        const Align(
          alignment: Alignment.center,
          child: ImageIcon(
            AssetImage(appLogoPink),
            size: 80,
            color: thePrimaryColor,
          ),
        ),
        const MultiTextColumnForWelcomeWidget(isLogin: true),
        TextButton(
          onPressed: () {
            MyBottomSheet.bottomSheet(child: ForgetPasswordScreen());
          },
          child: Text(
            AMCText.forgetPassText.tr,
            style: Get.textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
