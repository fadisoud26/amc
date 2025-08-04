import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:alwadi_medical_center/src/constents/size_int.dart';
import 'package:flutter/material.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: buttonElevation,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(buttonRadios)),
        foregroundColor: theWhiteColor,
        backgroundColor: thePrimaryColor,
        //side: const BorderSide(color: theSeconderyColor),
        padding: const EdgeInsets.symmetric(vertical: verticalButtonPadding),
        textStyle:
            const TextStyle(fontSize: buttonTextSize, color: theWhiteColor)),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shadowColor: theWhiteColor,
        elevation: buttonElevation,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(buttonRadios)),
        foregroundColor: theWhiteColor,
        backgroundColor: thePrimaryColor,
        //side: const BorderSide(color: thePrimaryColor),
        padding: const EdgeInsets.symmetric(vertical: verticalButtonPadding),
        textStyle:
            const TextStyle(fontSize: buttonTextSize, color: theWhiteColor)),
  );
}
