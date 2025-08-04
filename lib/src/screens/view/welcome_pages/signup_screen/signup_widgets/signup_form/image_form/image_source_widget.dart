import 'package:alwadi_medical_center/src/common_widgets/material_widget.dart';
import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/enum.dart';
import 'package:alwadi_medical_center/src/constents/icon_constents.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageSourceWidget extends StatelessWidget {
  const ImageSourceWidget({
    super.key,
    required this.imagePickerType,
    required this.onTap,
  });

  final ImgSource imagePickerType;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialWidget(
      child: SizedBox(
        height: 50,
        child: InkWell(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              sizedBoxW20,
              Icon(
                (imagePickerType == ImgSource.camera) ? cameraIcon : galeryIcon,
                size: 40,
                color: thePrimaryColor,
              ),
              sizedBoxW20,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    (imagePickerType == ImgSource.camera)
                        ? AMCText.cameraText.tr
                        : AMCText.galeryText.tr,
                    style: Get.textTheme.titleSmall,
                  ),
                  Text(
                    (imagePickerType == ImgSource.camera)
                        ? AMCText.cameraSubTitle.tr
                        : AMCText.galerySubTitle.tr,
                    style: Get.textTheme.labelSmall,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
