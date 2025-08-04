import 'package:alwadi_medical_center/src/constents/size_int.dart';
import 'package:alwadi_medical_center/src/utils/api/api_endpoints.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OfferPostImageWidget extends StatelessWidget {
  const OfferPostImageWidget({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.3,
      child: ClipRRect(
        borderRadius: Get.locale == const Locale('en')
            ? const BorderRadius.only(
                topLeft: Radius.circular(materialRadios),
                bottomLeft: Radius.circular(materialRadios),
              )
            : const BorderRadius.only(
                topRight: Radius.circular(materialRadios),
                bottomRight: Radius.circular(materialRadios),
              ),
        child: SizedBox.fromSize(
          size: const Size.fromRadius(60),
          child: Image.network(ApiEndPoints.baseURL + imagePath,
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
