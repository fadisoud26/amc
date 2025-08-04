import 'package:alwadi_medical_center/src/common_widgets/post/main_news_post/instruction_post_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_screen/news_shimmer.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/news_screen_controller.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InstructionsScreen extends StatelessWidget {
  InstructionsScreen({super.key});
  final NewsScreenController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(
        () => (controller.isLoadingDone.value)
            ? const NewsShimmerWidget()
            : SingleChildScrollView(
                child: Column(
                  children: [
                    controller.mainNewsModel!.instruction.isEmpty
                        ?  Center(
                            child: Column(
                            children: [
                              Text(AMCText.noInstructionYet.tr),
                              const Image(
                                image: AssetImage(newsImg),
                              ),
                            ],
                          ))
                        : ListView.builder(
                            itemCount:
                                controller.mainNewsModel?.instruction.length,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            controller: controller.scrollController2,
                            itemBuilder: (context, index) {
                              return InstructionPostWidget(
                                description: controller.mainNewsModel!
                                    .instruction[index].description,
                                imagePath: controller.mainNewsModel!
                                    .instruction[index].imagePath,
                              );
                            }),
                    sizedBoxW40,
                  ],
                ),
              ),
      ),
    );
  }
}
