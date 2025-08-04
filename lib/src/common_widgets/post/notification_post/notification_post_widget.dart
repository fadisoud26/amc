import 'package:alwadi_medical_center/src/common_widgets/material_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/post/notification_post/notification_post_info_widget.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationPostWidget extends StatelessWidget {
  const NotificationPostWidget({
    super.key,
    required this.sectionName,
    required this.doctorName,
    required this.deviceName,
    required this.date,
    required this.time,
    required this.type,
    required this.onTap,
  });

  final String sectionName;
  final String doctorName;
  final String deviceName;
  final String date;
  final String time;
  final String type;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
      child: SizedBox.fromSize(
        size: const Size.fromHeight(80),
        child: Expanded(
          child: Material2Widget(
            child: Expanded(
              child: InkWell(
                onTap: onTap,
                child: Row(
                  children: [
                    SizedBox(
                      width: Get.width * 0.2,
                      child: type == 'Rate'
                          ? /*const Icon(
                              ratingIcon,
                              size: 50,
                              color: thePrimaryColor,
                            )*/
                          const Image(image: AssetImage(rattingImg1))
                          : type == 'watting'
                              ? /*const Icon(
                                  wattingIcon,
                                  size: 50,
                                  color: thePrimaryColor,
                                )*/
                              const Image(image: AssetImage(wattingImg2))
                              : /*const Icon(
                                  missedIcon,
                                  size: 50,
                                  color: thePrimaryColor,
                                )*/
                              const Image(image: AssetImage(missedImg)),
                    ),
                    NotificationPostInfoWidget(
                      fullDate: '$date  $time',
                      deviceName: deviceName,
                      doctorName: doctorName,
                      sectionName: sectionName,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
