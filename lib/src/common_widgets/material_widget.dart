import 'package:alwadi_medical_center/src/constents/size_int.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MaterialWidget extends StatelessWidget {
  const MaterialWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(materialRadios),
        child: Expanded(
          child: child,
        ),
      ),
    );
  }
}

class Material2Widget extends StatelessWidget {
  const Material2Widget({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Material(
        elevation: 4,
        borderRadius: Get.locale == const Locale('en')
            ? const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                topLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              )
            : const BorderRadius.only(
                bottomLeft: Radius.circular(50),
                topRight: Radius.circular(50),
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
        child: Expanded(
          child: child,
        ),
      ),
    );
  }
}
