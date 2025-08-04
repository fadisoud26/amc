import 'package:flutter/material.dart';

class OfferPostPaddingWidget extends StatelessWidget {
  const OfferPostPaddingWidget({
    super.key,
    required this.child,
    this.isTitel,
  });

  final Widget child;
  final bool? isTitel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isTitel ?? false
          ? const EdgeInsets.fromLTRB(10, 2, 10, 2)
          : const EdgeInsets.fromLTRB(10, 2, 10, 2),
      child: child,
    );
  }
}
