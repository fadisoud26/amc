import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmeHeaderWidget extends StatelessWidget {
  const ConfirmeHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /*IconButton(
          onPressed: () {},
          icon:const  Icon(Icons.arrow_back_ios_new),
        ),*/
        const SizedBox(
          height: 200,
          child: Center(
            child: Image(image: AssetImage(confirmeImg)),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            AMCText.confirmeTitle.tr,
            style: Get.textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
