import 'package:alwadi_medical_center/src/utils/api/api_endpoints.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OfferDialogImage extends StatelessWidget {
  const OfferDialogImage({
    super.key,
    required this.imagePath,
  });
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: Get.width * 0.8,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(100),
            bottomLeft: Radius.circular(100),
          ),
          child: Image.network(
            ApiEndPoints.baseURL + imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
