import 'package:alwadi_medical_center/src/common_widgets/get_widget/dialog/offer_dialog_details.dart';
import 'package:alwadi_medical_center/src/common_widgets/get_widget/dialog/offer_dialog_image.dart';
import 'package:alwadi_medical_center/src/common_widgets/post/offer_p/offer_post_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_screen/offer_shimmer.dart';
import 'package:alwadi_medical_center/src/constents/images_string.dart';
import 'package:alwadi_medical_center/src/constents/sizebox.dart';
import 'package:alwadi_medical_center/src/screens/controller/home_screen_controller/offer_screen_controller.dart';
import 'package:alwadi_medical_center/src/utils/api/amc_string_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainOfferScreen extends StatelessWidget {
  const MainOfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OfferScreen(),
    );
  }
}

class OfferScreen extends StatelessWidget {
  OfferScreen({
    super.key,
  });
  final OfferScreenController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      strokeWidth: 4,
      onRefresh: controller.refresshIndicator,
      child: Column(
        children: [
          sizedBoxH10,
          Expanded(
            child: Obx(() => controller.isLoadingDone.value
                ? const OfferShimmerWidget()
                : SingleChildScrollView(
                    child: Column(
                      children: [
                        controller.offerModel!.offers.isEmpty
                            ? Center(
                                child: Column(
                                  children: [
                                    Text(AMCText.noOffersYet.tr),
                                    const Image(image: AssetImage(offersImg)),
                                  ],
                                ),
                              )
                            : ListView.builder(
                                itemCount:
                                    controller.offerModel?.offers.length ?? 0,
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                physics: const BouncingScrollPhysics(),
                                controller: controller.scrollController,
                                itemBuilder: (context, index) {
                                  return OfferPostWidget(
                                    offerName: controller
                                        .offerModel!.offers[index].name,
                                    discreption: controller.offerModel!
                                        .offers[index].description[0],
                                    imagePath: controller
                                        .offerModel!.offers[index].image,
                                    startDate: controller
                                        .offerModel!.offers[index].startDate,
                                    endDate: controller
                                        .offerModel!.offers[index].endDate,
                                    oldPrice: controller
                                        .offerModel!.offers[index].oldPrice
                                        .toString(),
                                    newPrice: controller
                                        .offerModel!.offers[index].newPrice
                                        .toString(),
                                    percent: controller
                                        .offerModel!.offers[index].discount,
                                    onTapImage: () => Get.dialog(
                                      OfferDialogImage(
                                          imagePath: controller
                                              .offerModel!.offers[index].image),
                                    ),
                                    onTapDetails: () =>
                                        Get.dialog(OfferDialogDetails(
                                      name: controller
                                          .offerModel!.offers[index].name,
                                      description: controller.offerModel!
                                          .offers[index].description,
                                      startDate: controller
                                          .offerModel!.offers[index].startDate,
                                      endDate: controller
                                          .offerModel!.offers[index].endDate,
                                      oldPrice: controller
                                          .offerModel!.offers[index].oldPrice,
                                      newPrice: controller
                                          .offerModel!.offers[index].newPrice,
                                      percent: controller
                                          .offerModel!.offers[index].discount,
                                    )),
                                  );
                                }),
                        sizedBoxH30,
                      ],
                    ),
                  )),
          ),
        ],
      ),
    );
  }
}
