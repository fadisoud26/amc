import 'package:alwadi_medical_center/src/common_widgets/shimmer/mian_shimmer.dart';
import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_padding_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_widget_for_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserProfileShimmerWidget extends StatelessWidget {
  const UserProfileShimmerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainShimmerWidget(
      itemCount: 1,
      item: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ShimmerWidgetForPorfile(
              width: double.infinity, height: Get.height * 0.6),
          const ShimmerPaddingWidget(vertical: 20),
          ShimmerWidget(width: Get.width * 0.3, height: 10),
          const ShimmerPaddingWidget(vertical: 5),
          ShimmerWidget(width: Get.width * 0.2, height: 10),
          const ShimmerPaddingWidget(vertical: 2),
          ShimmerWidget(width: Get.width * 0.3, height: 10),
          const ShimmerPaddingWidget(vertical: 2),
          ShimmerWidget(width: Get.width * 0.3, height: 10),
          const ShimmerPaddingWidget(vertical: 2),
          ShimmerWidget(width: Get.width * 0.4, height: 10),
          const ShimmerPaddingWidget(vertical: 20),
          ShimmerWidget(width: Get.width * 0.4, height: 10),
        ],
      ),
    );
  }
}
