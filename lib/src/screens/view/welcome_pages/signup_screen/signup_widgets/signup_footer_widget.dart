
import 'package:alwadi_medical_center/src/common_widgets/column_row_widget/multi_tex_iIn_column/multi_text_column_for_wlcome_widget.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:flutter/material.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return  const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        sizedBoxH20,
        Align(
          alignment: Alignment.center,
          child: MultiTextColumnForWelcomeWidget(
            isLogin: false,
          ),
        ),
      ],
    );
  }
}
