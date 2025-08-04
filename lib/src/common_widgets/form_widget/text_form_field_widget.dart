import 'package:alwadi_medical_center/src/common_widgets/material_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    Key? key,
    required this.textInputType,
    required this.hintText,
    required this.iconn,
    required this.textTED,
    this.validator, required this.textInputAction,
  }) : super(key: key);

  final TextEditingController textTED;
  final TextInputType textInputType;
  final String? Function(String?)? validator;
  final String hintText;
  final IconData iconn;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    return MaterialWidget(
      child: TextFormField(
        controller: textTED,
        keyboardType: textInputType,
        textInputAction: textInputAction,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(iconn),
        ),
        style: Get.textTheme.titleMedium,
        validator: validator,
      ),
    );
  }
}
