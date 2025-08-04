import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/constents/size_int.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerBackWidget extends StatelessWidget {
  const DrawerBackWidget({
    super.key,
    required this.title,
    this.isBigText,
  });

  final String title;
  final bool? isBigText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        height: 120,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35, left: 2, right: 2),
              child: InkWell(
                onTap: () => Get.back(),
                child: SizedBox(
                  height: 35,
                  child: Material(
                    borderRadius: BorderRadius.circular(materialRadios),
                    elevation: 4,
                    child: SizedBox(
                      width: Get.width * 0.7,
                      child: Padding(
                        padding: Get.locale == const Locale('en')
                            ? EdgeInsets.only(
                                left: Get.width * 0.18,
                                top: 5,
                              )
                            : EdgeInsets.only(top: 5, right: Get.width * 0.18),
                        child: Text(
                          title,
                          style: Get.textTheme.headlineMedium,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, bottom: 15),
              child: InkWell(
                onTap: () => Get.back(),
                child: Get.locale == const Locale('en')
                    ? Image.asset(halfAppLogePink)
                    : Image.asset(halfAppLogeLeftPink),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
