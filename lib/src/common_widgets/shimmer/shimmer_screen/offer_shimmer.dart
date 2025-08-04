import 'package:alwadi_medical_center/src/common_widgets/shimmer/mian_shimmer.dart';
import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_padding_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OfferShimmerWidget extends StatelessWidget {
  const OfferShimmerWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return MainShimmerWidget(
      itemCount: 8,
      item: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ShimmerWidget(height: Get.height * 0.15, width: Get.width * 0.3),
          const ShimmerPaddingWidget(horizontal: 5),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ShimmerWidget(height: 15.0, width: Get.width * 0.3),
                const ShimmerPaddingWidget(vertical: 8),
                const ShimmerWidget(height: 10.0, width: double.infinity),
                const ShimmerPaddingWidget(vertical: 2),
                ShimmerWidget(width: Get.width * 0.6, height: 10),
                const ShimmerPaddingWidget(vertical: 4),
                Row(
                  children: [
                    ShimmerWidget(height: 8.0, width: Get.width * 0.2),
                    const ShimmerPaddingWidget(horizontal: 15),
                    ShimmerWidget(height: 8.0, width: Get.width * 0.2),
                  ],
                ),
                const ShimmerPaddingWidget(vertical: 4),
                Row(
                  children: [
                    ShimmerWidget(height: 8.0, width: Get.width * 0.2),
                    const ShimmerPaddingWidget(horizontal: 15),
                    ShimmerWidget(height: 8.0, width: Get.width * 0.2),
                  ],
                ),
              ],
            ),
          ),
          const ShimmerPaddingWidget(vertical: 60),
        ],
      ),
    );
  }
}
