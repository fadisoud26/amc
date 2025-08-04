import 'package:alwadi_medical_center/src/common_widgets/carousel_slider_widget.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/category_screen/category_body/cosmetic_section_row.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/category_screen/category_body/medical_section_row.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/category_screen/category_body/row_section_type_text_widget.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/category_screen/category_body/see_all_medical_section_screen.dart';
import 'package:alwadi_medical_center/src/screens/view/home_pages/main_screens/category_screen/category_body/see_all_services_section_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        sizedBoxH10,
        const CarouselSliderWidget(),
        sizedBoxH10,
        RowSectionTypeTextWidget(
          isMedical: true,
          onTap: () => Get.toNamed(SeeAllMedicalSectionScreen.id),
        ),
        sizedBoxH10,
        SizedBox(
          height: 160, //dont change it
          child: MedicalSectionRow(),
        ),
        sizedBoxH20,
        RowSectionTypeTextWidget(
          isMedical: false,
          onTap: () => Get.toNamed(SeeAllServicesSectionScreen.id),
        ),
        sizedBoxH10,
        SizedBox(
          height: 160, //dont change it
          child: ServicesSectionRow(),
        ),
      ],
    );
  }
}
