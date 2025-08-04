import 'package:alwadi_medical_center/src/common_widgets/material_widget.dart';
import 'package:alwadi_medical_center/src/constents/icon_constents.dart';
import 'package:alwadi_medical_center/src/screens/controller/welcom_screen_controller/singup_controller/date_form_field_controller.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DateFormFeildWidget extends StatelessWidget {
  DateFormFeildWidget({super.key});
  final DateFormFieldController dateController = Get.find();
  @override
  Widget build(BuildContext context) {
    //DateFormFieldController dateController = Get.find();
    return MaterialWidget(
      child: Obx(
        () => TextFormField(
          keyboardType: TextInputType.none,
          decoration: InputDecoration(
            hintStyle:
                (dateController.hintText.value == AMCText.birthdayDateInputFieldHintText)
                    ? Get.textTheme.labelMedium
                    : Get.textTheme.titleMedium,
            hintText: dateController.hintText.value,
            prefixIcon: const Icon(birthdayDateIcon),
          ),
          readOnly: true,
          onTap: () => dateController.theDatePicker(),
        ),
      ),
    );
  }
}
