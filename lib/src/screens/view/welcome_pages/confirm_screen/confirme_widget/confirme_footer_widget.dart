import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmeFooterWidget extends StatelessWidget {
  const ConfirmeFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        sizedBoxH10,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {

                
              },
              child: Text(
                'this is not your number',
                style: Get.textTheme.labelLarge,
              ),
            ),
            TextButton(
              onPressed: () {Get.back();},
              child: const Text('resend'),
            ),
          ],
        ),
      ],
    );
  }
}
