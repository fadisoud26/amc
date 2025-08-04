import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:flutter/material.dart';

class OutlinedButtonWidget extends StatelessWidget {
  const OutlinedButtonWidget({
    Key? key,
    this.forAppBar,
    required this.onTap,
    required this.title,
    this.width,
    this.withHeight,
    this.isPinkBackground,
  }) : super(key: key);

  final Function() onTap;
  final String title;
  final double? width;
  final bool? withHeight;
  final int? isPinkBackground;

  final bool? forAppBar;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (width != null) ? width : double.infinity,
      child: Expanded(
          child: OutlinedButton(
        onPressed: onTap,
        style: (isPinkBackground == 1)
            ? OutlinedButton.styleFrom(
                foregroundColor: theWhiteColor,
                side: const BorderSide(color: theWhiteColor, width: 2),
              )
            : OutlinedButton.styleFrom(),
        child: Text(
          title,
          style: TextStyle(fontSize: forAppBar ?? false ? 16 : 22),
        ),
      )),
    );
  }
}
