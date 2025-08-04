import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_screen/user_profile_shimmer.dart';
import 'package:alwadi_medical_center/src/screens/controller/profiles_screen_controller/doctor_device_nurs_profile_controller.dart';
import 'package:alwadi_medical_center/src/screens/view/profile_pages/doctor_device_nurs_profile/doctor_device_nurs_profile_body_widget.dart';
import 'package:alwadi_medical_center/src/screens/view/profile_pages/doctor_device_nurs_profile/doctor_device_nurs_profile_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorDeviceNursProfileScreen extends StatelessWidget {
  DoctorDeviceNursProfileScreen({super.key});
  static const String id = '/doctor_device_nurs_profile_screen';
  final DoctorDeviceNursProfileController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.isLoading.value
            ? const UserProfileShimmerWidget()
            : SingleChildScrollView(
                child: Column(
                  children: [
                    DcotorDeviceNursProfileHeaderWidget(
                      imagePath: controller.profileImageLink.value,
                      onTapBack: () {
                        Get.back();
                      },
                    ),
                    DoctorDeviceNursProfileBodyWidget(
                      scrollController: controller.scrollController,
                      description: controller.information,
                      name: controller.name.value,
                      specialization: controller.specialization.value,
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
