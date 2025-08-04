import 'package:alwadi_medical_center/src/common_widgets/appBar/app_bar_back_with_logo/drawer_back_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/chatBubble/chat_bubble.dart';
import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/edge_insets_constents.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/screens/controller/drawer_screen_controller/complaints_controller.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ComplaintsScreen extends StatelessWidget {
  ComplaintsScreen({super.key});
  static const String id = '/complaints_screen';
  final ComplaintsController controller = Get.find();

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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizedBoxH30,
              DrawerBackWidget(title: AMCText.complaintsText.tr),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: signupAndLoginBodyPadding,
                    child: Column(
                      children: [
                        const ChatBubble(
                            text: 'لدي شكوى بخصوص معاملة الاستقبال مع المرضى',
                            isBgPink: true),
                        Obx(
                          () => controller.c.value == '' ? const Text(''):  ChatBubble(
                              text: controller.c.value, isBgPink: true),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35.0),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0, 3),
                              blurRadius: 5,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            /*IconButton(
                              icon: const Icon(
                                Icons.face,
                                color: thePrimaryColor,
                              ),
                            onPressed: (){},
                            ),*/
                            Expanded(
                              child: TextField(
                                controller: controller.messageTED,
                                enableInteractiveSelection: true,
                                decoration: const InputDecoration(
                                    hintText: "Type complaint message ...",
                                    isCollapsed: true,
                                    isDense: true,
                                    hintStyle:
                                        TextStyle(color: thePrimaryColor),
                                    border: InputBorder.none),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      padding: const EdgeInsets.all(15.0),
                      decoration: const BoxDecoration(
                          color: thePrimaryColor, shape: BoxShape.circle),
                      child: InkWell(
                        onTap: controller.onTapSend,
                        child: const Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
