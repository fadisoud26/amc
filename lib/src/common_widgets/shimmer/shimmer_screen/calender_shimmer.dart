import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_padding_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_widget.dart';
import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/edge_insets_constents.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class CalenderShimmerWidget extends StatelessWidget {
  const CalenderShimmerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Shimmer.fromColors(
            baseColor: shimmerBaaseColor,
            highlightColor: shimmerHighlightColor,
            enabled: true,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (_, __) => Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 30),
                  child: ShimmerWidget(
                      width: Get.width * 0.13, height: Get.height * 0.02)),
              itemCount: 8,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Shimmer.fromColors(
            baseColor: shimmerBaaseColor,
            highlightColor: shimmerHighlightColor,
            enabled: true,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (_, __) => Padding(
                padding: mainShimmetPadding,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ShimmerWidget(
                        height: Get.height * 0.08, width: Get.width * 0.265),
                    const ShimmerPaddingWidget(horizontal: 5),
                    ShimmerWidget(
                        height: Get.height * 0.08, width: Get.width * 0.265),
                    const ShimmerPaddingWidget(horizontal: 5),
                    ShimmerWidget(
                        height: Get.height * 0.08, width: Get.width * 0.265),
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
