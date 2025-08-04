import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/edge_insets_constents.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MainShimmerWidget extends StatelessWidget {
  const MainShimmerWidget({
    super.key,
    required this.itemCount,
    required this.item,
  });
  final int itemCount;
  final Widget item;

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
                padding: mainShimmetPadding,
                child: item,
              ),
              itemCount: itemCount,
            ),
          ),
        ),
      ],
    );
  }
}
