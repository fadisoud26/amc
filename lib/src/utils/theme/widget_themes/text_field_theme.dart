import 'package:alwadi_medical_center/src/constents/colors.dart';
import 'package:flutter/material.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
    border: InputBorder.none,
    contentPadding: EdgeInsets.all(15),
    hintStyle: TextStyle(
      fontSize: 16,
      color: theGrayColor,
    ),
    prefixIconColor: thePrimaryColor,
  );

  static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(
    border: InputBorder.none,
    contentPadding: EdgeInsets.all(15),
    hintStyle: TextStyle(
      fontSize: 16,
      color: theGrayColor,
    ),
    prefixIconColor: thePrimaryColor,
    suffixIconColor: thePrimaryColor,
  );
}
