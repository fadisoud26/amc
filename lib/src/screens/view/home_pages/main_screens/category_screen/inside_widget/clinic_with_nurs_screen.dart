import 'package:alwadi_medical_center/src/common_widgets/appBar/doctor_device_nurse_app_bar/doctor_device_nurse_app_bar.dart';
import 'package:alwadi_medical_center/src/common_widgets/get_widget/doctor_dialog_image.dart';
import 'package:alwadi_medical_center/src/common_widgets/post/doctor_device_nurse_post/doctor_device_nurse_post.dart';
import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_screen/appointment_shimmer.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/category_screens_controller/clinic_with_nurs_screen_controller.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/category_screen/inside_widget/nurs_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/profile_pages/doctor_device_nurs_profile/doctor_device_nurs_profile_screen.dart';
import 'package:alwadi_medical_center/src/utils/api/api_endpoints.dart';
import 'package:alwadi_medical_center/src/utils/api/page_argument_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClinicWithNursScreen extends StatelessWidget {
  static const String id = '/clinic_with_nurs_screen';
  ClinicWithNursScreen({super.key});
  final ClinicWithNursScreenController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DoctorDeviceNurseAppBar(
            information: controller.arguments[PageArgName.description],
            name: controller.arguments[PageArgName.name],
            specialization: controller.arguments[PageArgName.specialization],
            isDevice: true,
            onTap: () => Get.back(),
            onTapSeeMore: () => Get.toNamed(
              DoctorDeviceNursProfileScreen.id,
              arguments: {
                PageArgName.doctorName: 'null',
                PageArgName.deviceName:
                    controller.arguments[PageArgName.name],
                PageArgName.nursName: 'null',
              },
            ),
            imagePath: controller.arguments[PageArgName.image],
          ),
          sizedBoxH20,
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Obx(
                () => controller.isLoading.value
                    ? const AppointmentShimmerWidget()
                    : ListView.builder(
                        controller: controller.scrollController,
                        itemCount:
                            controller.nursListModel!.therapistList.length,
                        itemBuilder: (context, index) {
                          return DoctorDeviceNursePostWidget(
                              discreption: controller.nursListModel!
                                  .therapistList[index].specialization,
                              name: controller
                                  .nursListModel!.therapistList[index].name,
                              imagePath: ApiEndPoints.baseURL +
                                  controller.nursListModel!
                                      .therapistList[index].image,
                              onTapImage: () {
                                Get.dialog(DoctorDialogImage(
                                  imagePath: ApiEndPoints.baseURL +
                                      controller.nursListModel!
                                          .therapistList[index].image,
                                ));
                              },
                              onTap: () {
                                Get.toNamed(
                                  NursScreen.id,
                                  arguments: {
                                    PageArgName.image: ApiEndPoints.baseURL +
                                        controller.nursListModel!
                                            .therapistList[index].image,
                                    PageArgName.name: controller
                                        .nursListModel!
                                        .therapistList[index]
                                        .name,
                                    PageArgName.deviceName: controller
                                        .arguments[PageArgName.name],
                                    PageArgName.specialization: controller
                                        .nursListModel!
                                        .therapistList[index]
                                        .specialization,
                                    PageArgName.description: controller
                                        .nursListModel!
                                        .therapistList[index]
                                        .description,
                                  },
                                );
                              });
                        }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
