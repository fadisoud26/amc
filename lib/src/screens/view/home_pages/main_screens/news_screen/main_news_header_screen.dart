
import 'package:alwadi_medical_center/src/common_widgets/column_row_widget/tow_text_button_in_the_same_row/row_with_2_text_button_for_home_widget.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/news_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainNewsHeader extends StatelessWidget {
  MainNewsHeader({
    super.key,
  });

  final NewsScreenController mainNewsController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /* Align(
            alignment: Alignment.topLeft,
            child: Obx(
              () => Text.rich(
                TextSpan(
                  text: mainNewsHeaderLine1Text,
                  style: Get.textTheme.displayLarge,
                  children: [
                    TextSpan(
                      text: mainNewsController.name.value,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    )
                  ],
                ),
              ),
            )),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            mainNewsHeaderLine2Text,
            style: Get.textTheme.titleMedium,
          ),
        ),
        sizedBoxH10,*/
        Obx(
          () => RowWith2TextButtonForHomeWidget(
            decorationForLeft: mainNewsController.left.value,
            forNews: true,
            onPassed: () {
              mainNewsController.left.value = !mainNewsController.left.value;
            },
          ),
        ),
      ],
    );
  }
}
