import 'package:alwadi_medical_center/src/common_widgets/get_widget/dialog/rating_dialog_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/post/notification_post/notification_post_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_screen/notifications_shimmer.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/notifications_screen_controller.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainNotificationScreen extends StatelessWidget {
  const MainNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: NotificationScreen());
  }
}

class NotificationScreen extends StatelessWidget {
  NotificationScreen({
    super.key,
  });
  final NotificationScreenController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      strokeWidth: 4,
      onRefresh: controller.refresshIndicator,
      child: Column(
        children: [
          sizedBoxH10,
          Expanded(
            child: Obx(
              () => controller.isLoadingDone.value
                  ? const NotificationsShimmerWidget()
                  : SingleChildScrollView(
                      child: Column(
                        children: [
                          controller.notificationModel!.notifications.isEmpty
                              ? Center(
                                  child: Column(
                                    children: [
                                      Text(AMCText.noNotificationYet.tr),
                                      const Image(image: AssetImage(notitficationImg))
                                    ],
                                  ),
                                )
                              : ListView.builder(
                                  itemCount: controller
                                      .notificationModel!.notifications.length,
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  physics: const BouncingScrollPhysics(),
                                  controller: controller.scrollController,
                                  itemBuilder: (context, index) {
                                    return NotificationPostWidget(
                                      sectionName: controller.notificationModel!
                                          .notifications[index].sectionName,
                                      doctorName: controller.notificationModel!
                                          .notifications[index].competentName,
                                      deviceName: controller
                                              .notificationModel!
                                              .notifications[index]
                                              .deviceName ??
                                          ' ',
                                      date: controller.notificationModel!
                                          .notifications[index].date,
                                      time: controller.notificationModel!
                                          .notifications[index].time,
                                      type: controller.notificationModel!
                                          .notifications[index].type,
                                      onTap: controller.notificationModel!
                                                  .notifications[index].type ==
                                              'Rate'
                                          ? () {
                                              Get.dialog(RatingDialogWidget(
                                                  id: controller
                                                      .notificationModel!
                                                      .notifications[index]
                                                      .id
                                                      .toString(),
                                                  doctorAppointment: controller
                                                      .notificationModel!
                                                      .notifications[index]
                                                      .doctorAppointment,
                                                  controller: controller));
                                            }
                                          : () {},
                                    );
                                  }),
                        ],
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
