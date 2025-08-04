import 'package:alwadi_medical_center/src/constents/enum.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/screens/controller/drawer_screen_controller/accountSettingController/account_setting_image_controller.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/signup_screen/signup_widgets/signup_form/image_form/image_source_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountSettingImageWidget extends StatelessWidget {
  AccountSettingImageWidget({super.key});
  final AccountSettingImageController imagecontroller = Get.find();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageSourceWidget(
            imagePickerType: ImgSource.camera,
            onTap: () => imagecontroller.cameraButton(),
          ),
          sizedBoxH30,
          ImageSourceWidget(
            onTap: () => imagecontroller.galeryButton(),
            imagePickerType: ImgSource.galery,
          )
        ],
      ),
    );
  }
}
