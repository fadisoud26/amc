import 'package:flutter/material.dart';

import '../../../constents/colors.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme = const TextTheme(
    displayLarge: TextStyle(color: theBlackColor, fontSize: 20), //57
    labelMedium: TextStyle(color: theGrayColor, fontSize: 16), //12//
    bodySmall: TextStyle(color: theBlackColor, fontSize: 10), //12//
    bodyLarge: TextStyle(color: theGrayColor, fontSize: 18), //16//
    headlineLarge: TextStyle(color: theBlackColor, fontSize: 18), //32//
    headlineMedium: TextStyle(
        color: thePrimaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 20), //28//

    displayMedium: TextStyle(color: theBlackColor, fontWeight: FontWeight.bold),
    displaySmall:
        TextStyle(color: thePrimaryColor, fontWeight: FontWeight.bold),

    headlineSmall:
        TextStyle(color: thePrimaryColor, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(color: theGrayColor),
    titleMedium: TextStyle(color: theBlackColor),
    titleSmall: TextStyle(color: theBlackColor),
    labelLarge: TextStyle(color: theGrayColor),
    labelSmall: TextStyle(color: theBlackColor),

    bodyMedium: TextStyle(color: thePrimaryColor),
  );

  static TextTheme darkTextTheme = const TextTheme(
    displayLarge: TextStyle(color: theWhiteColor, fontSize: 20), //57
    labelMedium: TextStyle(color: theGrayColor, fontSize: 16), //12//
    bodySmall: TextStyle(color: theWhiteColor, fontSize: 10), //12//
    bodyLarge: TextStyle(color: theGrayColor, fontSize: 18), //16//
    headlineLarge: TextStyle(color: theWhiteColor, fontSize: 18), //32//
    headlineMedium: TextStyle(
        color: thePrimaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 20), //28//

    /////////////
    displayMedium:
        TextStyle(color: theWhiteColor, fontWeight: FontWeight.bold), //45
    displaySmall:
        TextStyle(color: thePrimaryColor, fontWeight: FontWeight.bold), //36

    headlineSmall:
        TextStyle(color: thePrimaryColor, fontWeight: FontWeight.bold), //24
    titleLarge: TextStyle(color: theGrayColor), //22
    titleMedium: TextStyle(color: theWhiteColor), //16
    titleSmall: TextStyle(color: theWhiteColor), //14
    labelLarge: TextStyle(color: theGrayColor), //14
    bodyMedium: TextStyle(color: thePrimaryColor), //14
    labelSmall: TextStyle(color: theWhiteColor), //11
  );
}
