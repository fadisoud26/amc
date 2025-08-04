import 'package:alwadi_medical_center/src/common_widgets/appBar/app_bar_back_with_logo/drawer_back_widget.dart';
import 'package:alwadi_medical_center/src/constents/colors.dart';

import 'package:alwadi_medical_center/src/constents/edge_insets_constents.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/screens/controller/drawer_screen_controller/help_controller.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpScreen extends StatelessWidget {
  HelpScreen({super.key});
  static const String id = '/help_screen';
  final HelpController controller = Get.find();

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
                DrawerBackWidget(title: AMCText.helpText.tr),
                Container(
                    padding: signupAndLoginBodyPadding,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HelpWidget(
                            title: 'How can i booking an appointment ? ',
                            text:
                                'you can go to the category page Then choose the department you want, then choose the doctor, and then you can see the available appointments and choose from them, knowing that you can edit or cancel the appointment later '),
                        HelpWidget(
                            title: 'How can i change my number ? ',
                            text:
                                'go to account setting and you can change any profile information'),
                        HelpWidget(
                            title:
                                'What is the clinic visit protocol at the center?',
                            text:
                                '''1 - Make an appointment in advance through the phone call, WhatsApp, or the center's application
2- Be present at the center at the time of the appointment
3 - Expect to wait to enter the session for a period not exceeding 30 minutes
4- Not taking children to the center unless the child visits a doctor
5 - Communicate calmly with the reception department in case of any error or problem'''),
                        HelpWidget(
                            title: 'how can i get offers',
                            text:
                                'On the offers page, there are available offers. You can choose from them by calling the center number to reserve the offer'),
                      ],
                    ) /*Obx(
                    () => ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Material(
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: ExpansionPanelList(
                            animationDuration:
                                const Duration(milliseconds: 1000),
                            expansionCallback: (int index, bool isExpanded) {
                              controller.helps[index].isExpanded!.value =
                                  !isExpanded;
                            },
                            children: controller.helps
                                .map<ExpansionPanel>((HelpModel major) {
                              return ExpansionPanel(
                                backgroundColor: theDefultFlutterWhiteColor,
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
                                      style:
                                          const TextStyle(color: theBlackColor),
                                    ),
                                  );
                                },
                                body: ExpansionPanelBodyForHelp(
                                    text: major.body!),
                                isExpanded: major.isExpanded!.value,
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),*/
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HelpWidget extends StatelessWidget {
  const HelpWidget({
    super.key,
    required this.title,
    required this.text,
  });
  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: thePrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              text,
              style: const TextStyle(color: theBlackColor, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
