import 'package:alwadi_medical_center/src/common_widgets/column_row_widget/column_with_text_and_icon_button/column_with_text_and_icon_button_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/get_widget/bottom_sheet.dart';
import 'package:alwadi_medical_center/src/constents/icon_constents.dart';
import 'package:alwadi_medical_center/src/screens/view/drawer_pages/accountSettingScreen/account_setting_image.dart';
import 'package:alwadi_medical_center/src/screens/view/welcome_pages/signup_screen/signup_widgets/signup_form/image_form/image_form_widget.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OptionalDataWidget extends StatelessWidget {
  const OptionalDataWidget({
    super.key,
    this.forEdit,
  });
  final bool? forEdit;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ColumnWithTextAndIconButtonWidget(
        text: AMCText.profilePhotoText.tr,
        icon: profilePhotoIcon,
        onTap: () => MyBottomSheet.bottomSheet(
            child: (forEdit != null)
                ? AccountSettingImageWidget()
                : ImageFormWidget()),
      ),
    );
  }
}
