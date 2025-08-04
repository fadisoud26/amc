import 'package:alwadi_medical_center/src/common_widgets/material_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/post/offer_p/offer_post_image_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/post/offer_p/offer_post_info_widget.dart';
import 'package:flutter/material.dart';

class OfferPostWidget extends StatelessWidget {
  const OfferPostWidget(
      {super.key,
      required this.offerName,
      required this.discreption,
      this.startDate,
      this.endDate,
      this.oldPrice,
      this.newPrice,
      this.percent,
      required this.imagePath,
      required this.onTapDetails,
      required this.onTapImage});

  final String offerName;
  final String discreption;
  final String? startDate;
  final String? endDate;
  final String? oldPrice;
  final String? newPrice;
  final String imagePath;

  final String? percent;
  final Function() onTapDetails;
  final Function() onTapImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
      child: SizedBox.fromSize(
        size: const Size.fromHeight(110),
        child: Expanded(
          child: MaterialWidget(
            child: InkWell(
              onTap: onTapDetails,
              child: Row(
                children: [
                  InkWell(
                      onTap: onTapImage,
                      child: OfferPostImageWidget(imagePath: imagePath)),
                  OfferPostInfoWidget(
                    offerName: offerName,
                    discreption: discreption,
                    startDate: startDate.toString().split(' ')[0],
                    endDate: endDate.toString().split(' ')[0],
                    percent: percent,
                    oldPrice: oldPrice,
                    newPrice: newPrice,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
