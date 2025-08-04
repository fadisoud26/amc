import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorDialogImage extends StatelessWidget {
  const DoctorDialogImage({
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
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
