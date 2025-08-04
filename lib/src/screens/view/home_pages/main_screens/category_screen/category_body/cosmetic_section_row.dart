import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_screen/category_shimmer.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/category_screens_controller/category_screen_controller.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/category_screen/category_body/section_widget.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/category_screen/inside_widget/clinic_with_doctors_or_devices_screen.dart';
import 'package:alwadi_medical_center/src/utils/api/api_endpoints.dart';
import 'package:alwadi_medical_center/src/utils/api/page_argument_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServicesSectionRow extends StatelessWidget {
  ServicesSectionRow({
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
                itemCount: controller.categoryModel!.devicesInSections.length,
                scrollDirection: Axis.horizontal,
                // shrinkWrap: true,
                // physics: const BouncingScrollPhysics(),
                controller: controller.servicesScrollController,
                itemBuilder: (context, index) {
                  return SectionWidget(
                    imageIconPath: ApiEndPoints.baseURL +
                        controller
                            .categoryModel!.devicesInSections[index].image,
                    isMedical: false,
                    numberText: controller
                        .categoryModel!.devicesInSections[index].number
                        .toString(),
                    sectionName:
                        controller.categoryModel!.devicesInSections[index].name,
                    onTap: () {
                      // if (servesList[index][PageArgName.numberOfDevices] !='0') {
                      Get.toNamed(
                        ClinicWithDoctorsOrDevicesScreen.id,
                        arguments: {
                          PageArgName.isDoctor: false,
                          PageArgName.image: ApiEndPoints.baseURL +
                              controller.categoryModel!.devicesInSections[index]
                                  .image,
                          PageArgName.fullName: controller
                              .categoryModel!.devicesInSections[index].fullName,
                          PageArgName.name: controller
                              .categoryModel!.devicesInSections[index].name,
                        },
                      );
                      /*} else {
                        Get.toNamed(
                          ClinicWithNursScreen.id,
                          arguments: {
                            PageArgName.image: servesList[index]
                                [PageArgName.image],
                            PageArgName.fullName: servesList[index]
                                [PageArgName.fullName],
                            PageArgName.name: servesList[index]
                                [PageArgName.name],
                            PageArgName.withOutDevice: true,
                          },
                        );
                      }*/
                    },
                  );
                }),
      ),
    );
  }
}
