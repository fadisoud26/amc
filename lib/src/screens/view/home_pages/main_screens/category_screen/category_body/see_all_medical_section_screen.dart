import 'package:alwadi_medical_center/src/common_widgets/appBar/app_bar_back_with_logo/drawer_back_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_screen/see_all_shimmer.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/category_screens_controller/see_all_medical_section_controller.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/category_screen/category_body/section_widget.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/category_screen/inside_widget/clinic_with_doctors_or_devices_screen.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:alwadi_medical_center/src/utils/api/api_endpoints.dart';
import 'package:alwadi_medical_center/src/utils/api/page_argument_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SeeAllMedicalSectionScreen extends StatelessWidget {
  static const String id = '/see_all_medical_section';
  SeeAllMedicalSectionScreen({super.key});

  final SeeAllMedicalSectionController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedBoxH30,
          DrawerBackWidget(
            title: AMCText.allMedicalSection.tr,
            isBigText: true,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Obx(
                () => controller.isLoading.value
                    ? const SeeAllShimmerWidget()
                    : GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 0.8,
                        ),
                        itemCount:
                            controller.categoryModel!.doctorsInSections.length,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        controller: controller.medicalScrollController,
                        itemBuilder: (context, index) {
                          return SectionWidget(
                            imageIconPath: ApiEndPoints.baseURL +
                                controller.categoryModel!
                                    .doctorsInSections[index].image,
                            isMedical: true,
                            numberText: controller
                                .categoryModel!.doctorsInSections[index].number
                                .toString(),
                            sectionName: controller
                                .categoryModel!.doctorsInSections[index].name,
                            onTap: () => Get.toNamed(
                              ClinicWithDoctorsOrDevicesScreen.id,
                              arguments: {
                                PageArgName.isDoctor: true,
                                PageArgName.image: ApiEndPoints.baseURL +
                                    controller.categoryModel!
                                        .doctorsInSections[index].image,
                                PageArgName.fullName: controller.categoryModel!
                                    .doctorsInSections[index].fullName,
                                PageArgName.name: controller.categoryModel!
                                    .doctorsInSections[index].name,
                              },
                            ),
                          );
                        }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
