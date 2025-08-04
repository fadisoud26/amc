import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/size_int.dart';
import 'package:flutter/material.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(buttonRadios)),
      foregroundColor: thePrimaryColor,
      side: const BorderSide(color: thePrimaryColor , width: 2),
      padding: const EdgeInsets.symmetric(vertical: verticalButtonPadding),
      textStyle: const TextStyle(fontSize: buttonTextSize),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(buttonRadios)),
      foregroundColor: thePrimaryColor,
      side: const BorderSide(color: thePrimaryColor , width: 2),
      padding: const EdgeInsets.symmetric(vertical: verticalButtonPadding),
      textStyle: const TextStyle(fontSize: buttonTextSize),
    ),
  );
}
