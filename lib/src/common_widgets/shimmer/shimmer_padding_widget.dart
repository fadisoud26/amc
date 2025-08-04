
import 'package:flutter/material.dart';

class ShimmerPaddingWidget extends StatelessWidget {
  const ShimmerPaddingWidget({
    super.key,
    this.vertical,
    this.horizontal,
  });
  final double? vertical;
  final double? horizontal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: vertical ?? 0,
        horizontal: horizontal ?? 0,
      ),
    );
  }
}
