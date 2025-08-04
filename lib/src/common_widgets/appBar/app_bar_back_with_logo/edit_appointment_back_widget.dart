import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/constents/size_int.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditApointmentBackRightWidget extends StatelessWidget {
  const EditApointmentBackRightWidget({
    super.key,
    required this.topTitle,
    required this.bottomTitle,
  });

  final String topTitle;
  final String bottomTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        height: 180,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
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
                          padding:
                              EdgeInsets.only(left: Get.width * 0.18, top: 5),
                          child: Text(
                            topTitle,
                            style: Get.textTheme.headlineMedium,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.only(left: 0, bottom: 15),
                  child: InkWell(
                    onTap: () => Get.back(),
                    child: Image.asset(halfAppLogePink),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 45, right: 2, left: 2),
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
                          padding: const EdgeInsets.only(
                            left: 18,top: 5),
                          child: Text(
                            bottomTitle,
                            style: Get.textTheme.headlineMedium,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.only(right: 0, bottom: 15),
                  child: InkWell(
                    onTap: () => Get.back(),
                    child: Image.asset(halfAppLogeLeftPink),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
