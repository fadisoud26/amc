import 'dart:convert';
import 'dart:io';

import 'dart:typed_data';

import 'package:alwadi_medical_center/src/screens/controller/welcom_screen_controller/singup_controller/signup_screen_controller.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageFormController extends GetxController {
  SignUpScreenController signUpController = Get.find();
  RxString imagePath = ''.obs;
  RxString imageSize = ''.obs;

  Future<void> getImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile != null) {
      imagePath.value = pickedFile.path;

      Uint8List imagebytes = await File(pickedFile.path).readAsBytes();
      String base64string = base64.encode(imagebytes);

      signUpController.imageConvert.value =
          "data:image/png;base64,$base64string";

      //print(bytes);
    } else {
      Get.snackbar(AMCText.errorText.tr, AMCText.noImageSelectedText.tr);
    }
  }

  void cameraButton() {
    getImage(ImageSource.camera);
  }

  void galeryButton() {
    getImage(ImageSource.gallery);
  }

  /* dynamic convertImage() async {
    Uint8List imagebytes = await image.readAsBytes();
    String base64string = base64.encode(imagebytes);
    return base64string;
    //return base64Encode(image.readAsBytesSync());
  }*/
}
