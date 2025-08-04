
import 'package:alwadi_medical_center/src/common_widgets/column_row_widget/tow_text_button_in_the_same_row/text_button_widget.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RowWith2TextButtonForWelcomeWidget extends StatelessWidget {
  const RowWith2TextButtonForWelcomeWidget({
    Key? key,
    this.decorationForLeft,
    this.onPassed,
  }) : super(key: key);

  final bool? decorationForLeft;
  final Function()? onPassed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: decorationForLeft == true
                ? const EdgeInsets.only(bottom: 35)
                : const EdgeInsets.only(top: 35),
            child: TextButtonWidget(
              forLogIn: true,
              text: AMCText.logIn.tr,
              textDecoration: decorationForLeft == true
                  ? TextDecoration.underline
                  : TextDecoration.none,
              onTap: decorationForLeft == true ? () {} : onPassed,
            ),
          ),
          Padding(
            padding: decorationForLeft == false
                ? const EdgeInsets.only(bottom: 35)
                : const EdgeInsets.only(top: 35),
            child: TextButtonWidget(
              forLogIn: true,
              text: AMCText.signUp.tr,
              textDecoration: decorationForLeft == false
                  ? TextDecoration.underline
                  : TextDecoration.none,
              onTap: decorationForLeft == false ? () {} : onPassed,
            ),
          ),
        ],
      ),
    );
  }
}
