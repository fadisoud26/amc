import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/edge_insets_constents.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorDeviceNursProfileBodyWidget extends StatelessWidget {
  const DoctorDeviceNursProfileBodyWidget({
    super.key,
    required this.name,
    required this.specialization,
    required this.description,
    required this.scrollController,
  });

  final String name;
  final String specialization;
  final List<String> description;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: signupAndLoginBodyPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Text(name, style: Get.textTheme.displaySmall),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Text(specialization, style: Get.textTheme.headlineLarge),
          ),
          sizedBoxH20,
          ListView.builder(
              itemCount: description.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              controller: scrollController,
              itemBuilder: (context, index) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(description[index],
                      textAlign: TextAlign.right,
                          style: Get.textTheme.headlineLarge),
                    ),
                    sizedBoxW20,
                    const ImageIcon(
                      AssetImage(appLogoPink),
                      color: thePrimaryColor,
                      size: 25,
                    ),
                  ],
                );
              }),
          sizedBoxH20,
        ],
      ),
    );
  }
}
