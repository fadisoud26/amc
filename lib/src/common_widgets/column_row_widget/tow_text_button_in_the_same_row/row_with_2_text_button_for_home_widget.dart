
import 'package:alwadi_medical_center/src/common_widgets/column_row_widget/tow_text_button_in_the_same_row/text_button_widget.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RowWith2TextButtonForHomeWidget extends StatelessWidget {
  const RowWith2TextButtonForHomeWidget({
    Key? key,
    this.decorationForLeft,
    this.onPassed,
    required this.forNews,
  }) : super(key: key);

  final bool? decorationForLeft;
  final Function()? onPassed;
  final bool forNews;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButtonWidget(
            forLogIn: false,
            text:
                (forNews) ? AMCText.leftTextInNewsScreen.tr : AMCText.leftTextInAppointmentScreen.tr,
            textDecoration: (decorationForLeft == true)
                ? TextDecoration.underline
                : TextDecoration.none,
            onTap: (decorationForLeft == true) ? () {} : onPassed,
          ),
          TextButtonWidget(
            forLogIn: false,
            text: (forNews)
                ? AMCText.rightTextInNewsScreen.tr
                : AMCText.rightTextInAppointmentScreen.tr,
            textDecoration: (decorationForLeft == false)
                ? TextDecoration.underline
                : TextDecoration.none,
            onTap: (decorationForLeft == false) ? () {} : onPassed,
          ),
        ],
      ),
    );
  }
}
