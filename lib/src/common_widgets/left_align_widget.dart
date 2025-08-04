import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LeftAlignWidget extends StatelessWidget {
  const LeftAlignWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: Get.textTheme.labelLarge,
      ),
    );
  }
}
