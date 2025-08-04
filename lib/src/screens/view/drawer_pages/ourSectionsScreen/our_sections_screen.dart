import 'package:alwadi_medical_center/src/common_widgets/appBar/app_bar_back_with_logo/drawer_back_widget.dart';
import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/edge_insets_constents.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/screens/controller/drawer_screen_controller/our_sections_controller.dart';
import 'package:alwadi_medical_center/src/screens/model/majors_model.dart';
import 'package:alwadi_medical_center/src/screens/view/drawer_pages/ourSectionsScreen/expansion_panel_body.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OurSectionsScreen extends StatelessWidget {
  OurSectionsScreen({super.key});
  static const String id = '/our_sections_screen';
  final OurSectionsController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding:
                EdgeInsets.only(top: Get.height - 500, left: Get.width - 200),
            child: const Image(image: AssetImage(path0Img)),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: Get.height - 190, right: Get.width - 100),
            child: const Image(image: AssetImage(path3Img)),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBoxH30,
                DrawerBackWidget(title: AMCText.ourSectionText.tr),
                Container(
                  padding: signupAndLoginBodyPadding,
                  child: Obx(
                    () => ExpansionPanelList(
                      expandedHeaderPadding: const EdgeInsets.all(10 ),
                      elevation: 4,
                      animationDuration:
                          const Duration(milliseconds: 1000),
                      expansionCallback: (int index, bool isExpanded) {
                        controller.majors[index].isExpanded!.value =
                            !isExpanded;
                      },
                      children: controller.majors
                          .map<ExpansionPanel>((MajorModel major) {
                        return ExpansionPanel(
                          backgroundColor: major.isBgPink!
                              ? thePrimaryColor
                              : theDefultFlutterWhiteColor,
                          canTapOnHeader: true,
                          headerBuilder:
                              (BuildContext context, bool isExpanded) {
                            return ListTile(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(100)),
                              title: Text(
                                major.title!,
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: major.isBgPink!
                                        ? theWhiteColor
                                        : theBlackColor),
                              ),
                            );
                          },
                          body: ExpansionPanelBody(
                            isBgPink: major.isBgPink!,
                            image: major.image!,
                            text: major.body!,
                          ),
                          isExpanded: major.isExpanded!.value,
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
