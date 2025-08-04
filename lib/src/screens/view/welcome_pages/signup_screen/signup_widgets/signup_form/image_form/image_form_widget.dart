
import 'package:alwadi_medical_center/src/constents/enum.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/screens/controller/welcom_screen_controller/singup_controller/image_form_controller.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/signup_screen/signup_widgets/signup_form/image_form/image_source_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageFormWidget extends StatelessWidget {
  ImageFormWidget({super.key});
  final ImageFormController imagecontroller = Get.find();
  
  
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
