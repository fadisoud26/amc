import 'package:alwadi_medical_center/src/common_widgets/shimmer/mian_shimmer.dart';
import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_padding_widget.dart';
import 'package:alwadi_medical_center/src/common_widgets/shimmer/shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountSettingShimmerWidget extends StatelessWidget {
  const AccountSettingShimmerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: MainShimmerWidget(
        itemCount: 6,
        item: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ShimmerWidget(height: Get.height * 0.1, width: Get.width),
            const ShimmerPaddingWidget(vertical: 6),
          ],
        ),
      ),
    );
  }
}


