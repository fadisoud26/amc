import 'package:alwadi_medical_center/src/common_widgets/post/appointment_post/appointment_post.dart';
import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_screen/appointment_shimmer.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/appointment_screen_controller.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PreviousAppointmentScreen extends StatelessWidget {
  PreviousAppointmentScreen({super.key});
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
                    controller.appointmentModel!.previous.isEmpty
                        ?  Center(
                            child: Column(
                              children: [
                                Text(AMCText.noPreviousAppointment.tr),
                                const Image(image: AssetImage(appointmetnImg))
                              ],
                            ),
                          )
                        : ListView.builder(
                            itemCount:
                                controller.appointmentModel?.previous.length ??
                                    0,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            controller: controller.scrollController2,
                            itemBuilder: (context, index) {
                              return AppointmentPostWidget(
                                day: controller
                                    .appointmentModel!.previous[index].date
                                    .split('-')[2],
                                month: controller
                                    .appointmentModel!.previous[index].date
                                    .split('-')[1],
                                year: controller
                                    .appointmentModel!.previous[index].date
                                    .split('-')[0],
                                time: controller
                                    .appointmentModel!.previous[index].time,
                                doctorOrNursName: controller.appointmentModel!
                                    .previous[index].competentName,
                                name: controller.appointmentModel!
                                    .previous[index].sectionName,
                                deviceName: controller.appointmentModel!
                                    .previous[index].deviceName,
                              );
                            }),
                  ],
                ),
              ),
      ),
    );
  }
}
