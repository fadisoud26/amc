import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OfferPostTextRichWidget extends StatelessWidget {
  const OfferPostTextRichWidget({
    super.key,
    required this.left,
    required this.right,
    this.isPrice,
  });

  final String? left;
  final String? right;
  final bool? isPrice;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      isPrice ?? false
          ? TextSpan(
              children: [
                TextSpan(
                  text: '${left!}${AMCText.spText.tr}',
                  style: const TextStyle(
                    color: theGrayColor,
                    decoration: TextDecoration.lineThrough ,
                    fontFamily: 'Rubik'
                  ),
                ),
                const TextSpan(text: '\t\t'),
                TextSpan(text: '${right!}${AMCText.spText.tr}' , style: const TextStyle(fontFamily: 'Rubik')),
              ],
            )
          : TextSpan(
              style: TextStyle(
                  color: Get.isDarkMode ? theWhiteColor : Colors.black , fontFamily: 'Rubik'),
              children: [
                TextSpan(
                  text: left,
                ),
                TextSpan(
                  text: AMCText.toText.tr,
                  style: const TextStyle(color: theGrayColor , fontFamily: 'Rubik'),
                ),
                TextSpan(text: right ,style: const TextStyle(fontFamily: 'Rubik'))
              ],
            ),
    );
  }
}
