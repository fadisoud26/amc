import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_padding_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_widget.dart';
import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class SeeAllShimmerWidget extends StatelessWidget {
  const SeeAllShimmerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          child: Shimmer.fromColors(
            baseColor: shimmerBaaseColor,
            highlightColor: shimmerHighlightColor,
            enabled: true,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (_, __) => Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ShimmerWidget(
                        height: Get.height * 0.15, width: Get.width * 0.25),
                    const ShimmerPaddingWidget(horizontal: 5),
                    ShimmerWidget(
                        height: Get.height * 0.15, width: Get.width * 0.25),
                    const ShimmerPaddingWidget(horizontal: 5),
                    ShimmerWidget(
                        height: Get.height * 0.15, width: Get.width * 0.25),
                    const ShimmerPaddingWidget(horizontal: 5),
                  ],
                ),
              ),
              itemCount: 8,
            ),
          ),
        ),
      
      ],
    );
  }
}
