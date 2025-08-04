import 'package:alwadi_medical_center/src/common_widgets/post/appointment_post/appointment_post.dart';
import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_screen/appointment_shimmer.dart';
import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/appointment_screen_controller.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/appointment_screen/edit_appointment_screen.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:alwadi_medical_center/src/utils/api/page_argument_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommingAppointmentScreen extends StatelessWidget {
  CommingAppointmentScreen({super.key});

  final AppointmentScreenController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(
        () => (controller.isLoading.value)
            ? const AppointmentShimmerWidget()
            : SingleChildScrollView(
                child: Column(
                  children: [
                    controller.appointmentModel!.upcoming.isEmpty
                        ? Center(
                            child: Column(
                              children: [
                                Text(AMCText.noCommingAppointmentYet.tr),
                                const Image(image: AssetImage(appointmetnImg))
                              ],
                            ),
                          )
                        : ListView.builder(
                            itemCount:
                                controller.appointmentModel?.upcoming.length ??
                                    0,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            controller: controller.scrollController,
                            itemBuilder: (context, index) {
                              return AppointmentPostWidget(
                                onTapEdit: () => Get.toNamed(
                                    EditAppointmentScreen.id,
                                    arguments: {
                                      PageArgName.isDoctor: controller
                                          .appointmentModel!
                                          .upcoming[index]
                                          .isDoctor,
                                      PageArgName.sectionName: controller
                                          .appointmentModel!
                                          .upcoming[index]
                                          .sectionName,
                                      PageArgName.doctorName: controller
                                          .appointmentModel!
                                          .upcoming[index]
                                          .competentName,
                                      PageArgName.deviceName: controller
                                              .appointmentModel!
                                              .upcoming[index]
                                              .deviceName ??
                                          ' ',
                                      PageArgName.id: controller
                                          .appointmentModel!.upcoming[index].id,
                                    }),
                                onTapDelete: () => Get.defaultDialog(
                                    content: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        const Image(
                                          image: AssetImage(deleteImg2),
                                          height: 200,
                                        ),
                                        Text(
                                          AMCText.deleteAppointmentSubTitle.tr,
                                        ),
                                      ],
                                    ),
                                    radius: 30,
                                    title: AMCText.deleteAppointmentText.tr,
                                    titleStyle:
                                        const TextStyle(color: thePrimaryColor),
                                    middleText:
                                        AMCText.deleteAppointmentSubTitle.tr,
                                    onConfirm: () =>
                                        controller.onTapOkFroDelete(
                                            id: controller.appointmentModel!
                                                .upcoming[index].id,
                                            isDoctor: controller
                                                .appointmentModel!
                                                .upcoming[index]
                                                .isDoctor),
                                    textCancel: AMCText.cancelText.tr,
                                    textConfirm: AMCText.okText.tr,
                                    confirmTextColor: theWhiteColor,
                                    cancelTextColor: thePrimaryColor,
                                    buttonColor: thePrimaryColor),

                                day: controller
                                    .appointmentModel!.upcoming[index].date
                                    .split('-')[2],
                                month: controller
                                    .appointmentModel!.upcoming[index].date
                                    .split('-')[1],
                                year: controller
                                    .appointmentModel!.upcoming[index].date
                                    .split('-')[0],
                                time: controller
                                    .appointmentModel!.upcoming[index].time,
                                isComming: true, //dont change it
                                doctorOrNursName: controller.appointmentModel!
                                    .upcoming[index].competentName,
                                name: controller.appointmentModel!
                                    .upcoming[index].sectionName,
                                deviceName: controller.appointmentModel!
                                    .upcoming[index].deviceName,
                              );
                            }),
                  ],
                ),
              ),
      ),
    );
  }
}
