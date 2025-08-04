import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    Key? key,
    required this.text,
    required this.textDecoration,
    this.onTap,
    required this.forLogIn,
  }) : super(key: key);

  final String text;
  final TextDecoration textDecoration;
  final Function()? onTap;
  final bool forLogIn;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        text,
        style: TextStyle(
          decoration: textDecoration,
          color: (textDecoration == TextDecoration.underline)
              ? thePrimaryColor
              : theGrayColor,
          fontWeight: (textDecoration == TextDecoration.underline)
              ? FontWeight.bold
              : FontWeight.normal,
          fontSize: (textDecoration == TextDecoration.underline && forLogIn)
              ? 30
              : 20,
        ),
      ),
    );
  }
}
