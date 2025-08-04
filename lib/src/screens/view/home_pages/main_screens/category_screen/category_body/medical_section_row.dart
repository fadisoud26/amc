import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_screen/category_shimmer.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/category_screens_controller/category_screen_controller.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/category_screen/category_body/section_widget.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/category_screen/inside_widget/clinic_with_doctors_or_devices_screen.dart';
import 'package:alwadi_medical_center/src/utils/api/api_endpoints.dart';
import 'package:alwadi_medical_center/src/utils/api/page_argument_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MedicalSectionRow extends StatelessWidget {
  MedicalSectionRow({
    super.key,
  });
  final CategoryScreenController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8),
        child: Obx(
          () => controller.isLoading.value
              ? const CategoryShimmerWidget()
              : ListView.builder(
                  itemCount: controller.categoryModel!.doctorsInSections.length,
                  scrollDirection: Axis.horizontal,
                  // shrinkWrap: true,
                  // physics: const BouncingScrollPhysics(),
                  controller: controller.medicalScrollController,
                  itemBuilder: (context, index) {
                    return SectionWidget(
                      imageIconPath: ApiEndPoints.baseURL +
                          controller
                              .categoryModel!.doctorsInSections[index].image,
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
                              controller.categoryModel!.doctorsInSections[index]
                                  .image,
                          PageArgName.fullName: controller
                              .categoryModel!.doctorsInSections[index].fullName,
                          PageArgName.name: controller
                              .categoryModel!.doctorsInSections[index].name,
                        },
                      ),
                    );
                  }),
        ));
  }
}
