import 'package:alwadi_medical_center/src/common_widgets/appBar/clinic_app_bar/clinic_app_bar.dart';
import 'package:alwadi_medical_center/src/common_widgets/get_widget/doctor_dialog_image.dart';
import 'package:alwadi_medical_center/src/common_widgets/post/doctor_device_nurse_post/doctor_device_nurse_post.dart';
import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_screen/appointment_shimmer.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/category_screens_controller/clinic_with_doctors_or_devices_screen_controller.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/category_screen/inside_widget/doctor_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/category_screen/inside_widget/clinic_with_nurs_screen.dart';
import 'package:alwadi_medical_center/src/utils/api/api_endpoints.dart';
import 'package:alwadi_medical_center/src/utils/api/page_argument_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClinicWithDoctorsOrDevicesScreen extends StatelessWidget {
  static const String id = '/clinic_with_doctors_or_devices_screen';
  ClinicWithDoctorsOrDevicesScreen({super.key});
  final ClinicWithDoctorsOrDevicesScreenController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClinicAppBar(
            imageIconPath: controller.arguments[PageArgName.image],
            text: controller.arguments[PageArgName.fullName],
            onTap: () => Get.back(),
          ),
          sizedBoxH10,
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Obx(
                () => controller.isLoading.value
                    ? const AppointmentShimmerWidget()
                    : controller.arguments[PageArgName.isDoctor]
                        ? ListView.builder(
                            controller: controller.scrollController,
                            itemCount:
                                controller.doctorsListModel!.doctorsList.length,
                            itemBuilder: (context, index) {
                              return DoctorDeviceNursePostWidget(
                                  discreption: controller.doctorsListModel!
                                      .doctorsList[index].specialization,
                                  name: controller.doctorsListModel!
                                      .doctorsList[index].name,
                                  imagePath: ApiEndPoints.baseURL +
                                      controller.doctorsListModel!
                                          .doctorsList[index].image,
                                  onTapImage: () {
                                    Get.dialog(DoctorDialogImage(
                                      imagePath: ApiEndPoints.baseURL +
                                          controller.doctorsListModel!
                                              .doctorsList[index].image,
                                    ));
                                  },
                                  onTap: () {
                                    Get.toNamed(
                                      DoctorScreen.id,
                                      arguments: {
                                        PageArgName.image:
                                            ApiEndPoints.baseURL +
                                                controller.doctorsListModel!
                                                    .doctorsList[index].image,
                                        PageArgName.name: controller
                                            .doctorsListModel!
                                            .doctorsList[index]
                                            .name,
                                        PageArgName.specialization: controller
                                            .doctorsListModel!
                                            .doctorsList[index]
                                            .specialization,
                                        PageArgName.description: controller
                                            .doctorsListModel!
                                            .doctorsList[index]
                                            .description,
                                      },
                                    );
                                  });
                            })
                        : ListView.builder(
                            controller: controller.scrollController,
                            itemCount: controller
                                .devicesListModel!.devicessList.length,
                            itemBuilder: (context, index) {
                              return DoctorDeviceNursePostWidget(
                                  discreption: controller.devicesListModel!
                                      .devicessList[index].description,
                                  name: controller.devicesListModel!
                                      .devicessList[index].name,
                                  imagePath: ApiEndPoints.baseURL +
                                      controller.devicesListModel!
                                          .devicessList[index].image,
                                  onTapImage: () {
                                    Get.dialog(DoctorDialogImage(
                                      imagePath: ApiEndPoints.baseURL +
                                          controller.devicesListModel!
                                              .devicessList[index].image,
                                    ));
                                  },
                                  onTap: () {
                                    Get.toNamed(
                                      ClinicWithNursScreen.id,
                                      arguments: {
                                        PageArgName.image:
                                            ApiEndPoints.baseURL +
                                                controller.devicesListModel!
                                                    .devicessList[index].image,
                                        PageArgName.name: controller
                                            .devicesListModel!
                                            .devicessList[index]
                                            .name,
                                        PageArgName.specialization: ' ',
                                        PageArgName.description: controller
                                            .devicesListModel!
                                            .devicessList[index]
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
