import 'package:alwadi_medical_center/src/common_widgets/post/offer_p/offer_post_padding_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/post/offer_p/offer_post_text_rich_widget.dart';
import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OfferPostInfoWidget extends StatelessWidget {
  const OfferPostInfoWidget({
    super.key,
    required this.offerName,
    required this.discreption,
    required this.startDate,
    required this.endDate,
    required this.percent,
    required this.oldPrice,
    required this.newPrice,
  });

  final String offerName;
  final String discreption;
  final String? startDate;
  final String? endDate;
  final String? percent;
  final String? oldPrice;
  final String? newPrice;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OfferPostPaddingWidget(
              isTitel: true,
              child: RichText(
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                    style: Get.textTheme.headlineMedium, text: offerName),
              ),
            ),
            OfferPostPaddingWidget(
              child: RichText(
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                    style:  TextStyle(color: Get.isDarkMode? theWhiteColor: Colors.black , fontFamily: 'Rubik'),
                    text: '$discreption  ..'),
              ),
            ),
            OfferPostPaddingWidget(
              child: (startDate != null && endDate != null)
                  ? OfferPostTextRichWidget(left: startDate, right: endDate)
                  : Text(
                      startDate ?? '',
                      style:  TextStyle(color:  Get.isDarkMode? theWhiteColor : Colors.black , fontFamily: 'Rubik'),
                    ),
            ),
            OfferPostPaddingWidget(
              child: (percent != "-")
                  ? Text('$percent %' , style: const TextStyle(fontFamily: 'Rubik'),)
                  : (oldPrice != "-" && newPrice != "-")
                      ? OfferPostTextRichWidget(
                          isPrice: true, left: oldPrice, right: newPrice)
                      : (newPrice != "-")
                          ? Text('$newPrice${AMCText.spText.tr}' , style:  const TextStyle(fontFamily: 'Rubik'),)
                          : const Text(''),
            ),
          ],
        ),
      ),
    );
  }
}
