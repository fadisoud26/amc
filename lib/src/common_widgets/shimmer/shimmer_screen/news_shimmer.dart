import 'package:alwadi_medical_center/src/common_widgets/shimmer/mian_shimmer.dart';
import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_padding_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsShimmerWidget extends StatelessWidget {
  const NewsShimmerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainShimmerWidget(
      itemCount: 3,
      item: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ShimmerPaddingWidget(vertical: 2),
          ShimmerWidget(width: Get.width * 0.2, height: 10),
          const ShimmerPaddingWidget(vertical: 5),
          const ShimmerWidget(width: double.infinity, height: 10),
          const ShimmerPaddingWidget(vertical: 2),
          const ShimmerWidget(width: double.infinity, height: 10),
          const ShimmerPaddingWidget(vertical: 2),
          ShimmerWidget(width: Get.width * 0.6, height: 10),
          const ShimmerPaddingWidget(vertical: 2),
          ShimmerWidget(width: double.infinity, height: Get.height * 0.3),
          const ShimmerPaddingWidget(vertical: 12),
        ],
      ),
    );
  }
}

