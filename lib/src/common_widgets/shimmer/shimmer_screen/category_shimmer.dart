import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_widget.dart';
import 'package:alwadi_medical_center/src/constents/colors.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class CategoryShimmerWidget extends StatelessWidget {
  const CategoryShimmerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          child: Shimmer.fromColors(
            baseColor: shimmerBaaseColor,
            highlightColor: shimmerHighlightColor,
            enabled: true,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (_, __) => Padding(
                padding: const EdgeInsets.all(10),
                child: ShimmerWidget(
                    height: Get.height * 0.15, width: Get.width * 0.23),
              ),
              itemCount: 5,
            ),
          ),
        ),
      ],
    );
  }
}
