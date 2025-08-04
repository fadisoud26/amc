import 'package:alwadi_medical_center/src/common_widgets/post/main_news_post/news_post_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_screen/news_shimmer.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/news_screen_controller.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsScreen extends StatelessWidget {
  NewsScreen({super.key});
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
                    controller.mainNewsModel!.news.isEmpty
                        ? Center(
                            child: Column(
                            children: [
                              Text(AMCText.noNewsYet.tr),
                              const Image(
                                image: AssetImage(newsImg),
                              ),
                            ],
                          ))
                        : ListView.builder(
                            itemCount:
                                controller.mainNewsModel?.news.length ?? 0,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            controller: controller.scrollController,
                            itemBuilder: (context, index) {
                              return NewsPostWidget(
                                date: controller
                                    .mainNewsModel!.news[index].publichDate,
                                description: controller
                                    .mainNewsModel!.news[index].description,
                                imagePath: controller
                                    .mainNewsModel!.news[index].imagePath,
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
