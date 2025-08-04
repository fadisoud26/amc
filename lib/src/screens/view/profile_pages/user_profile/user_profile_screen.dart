import 'package:alwadi_medical_center/src/common_widgets/button/elevated_button_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_screen/user_profile_shimmer.dart';
import 'package:alwadi_medical_center/src/screens/controller/profiles_screen_controller/user_profile_controller.dart';
import 'package:alwadi_medical_center/src/screens/view/drawer_pages/accountSettingScreen/account_setting_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/profile_pages/user_profile/user_profile_body_widget.dart';
import 'package:alwadi_medical_center/src/screens/view/profile_pages/user_profile/user_profile_header_widget.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:alwadi_medical_center/src/utils/api/api_endpoints.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserProfileScreen extends StatelessWidget {
  UserProfileScreen({super.key});
  static const String id = '/user_profile_screen';
  final UserProfileController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.isLoading.value
            ? const UserProfileShimmerWidget()
            : Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          UserProfileHeaderWidget(
                            imagePath: ApiEndPoints.baseURL +
                                controller.userModel!.profilePicture,
                            onTapBack: () {
                              Get.back();
                            },
                          ),
                          UserProfileBodyWidget(
                            userName: controller.userModel!.username,
                            phoneNumber: controller.userModel!.phoneNumber,
                            birthdayDate: controller.userModel!.birthDate,
                            isMale: controller.userModel!.isMale,
                            isSingle: controller.userModel!.isSingle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    child: ElevatedButtonWidget(
                  onTap: () => Get.toNamed(AccountSettingScreen.id),
                  withHeight: true,
                  title: AMCText.editProfileInformationText.tr,
                )
                  ),
                ],
              ),
      ),
    );
  }
}
