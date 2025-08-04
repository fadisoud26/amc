import 'package:alwadi_medical_center/src/constents/edge_insets_constents.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageMaterialWidget extends StatelessWidget {
  const PageMaterialWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: Get.locale == const Locale('en')
              ? const BorderRadius.only(topLeft: Radius.circular(40))
              : const BorderRadius.only(topRight: Radius.circular(40)),
        ),
        child: Padding(
          padding: pagesPadding,
          child: child,
        ),
      ),
    );
  }
}
