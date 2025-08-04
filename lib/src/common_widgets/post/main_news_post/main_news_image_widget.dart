import 'package:alwadi_medical_center/src/constents/size_int.dart';
import 'package:alwadi_medical_center/src/utils/api/api_endpoints.dart';
import 'package:flutter/material.dart';

class MainNewsImage extends StatelessWidget {
  const MainNewsImage({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(materialRadios),
          bottomRight: Radius.circular(materialRadios),
        ),
        child: Image.network(
          '${ApiEndPoints.baseURL}$imagePath',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
