import 'package:alwadi_medical_center/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:alwadi_medical_center/src/utils/theme/widget_themes/outlineed_button_theme.dart';
import 'package:alwadi_medical_center/src/utils/theme/widget_themes/text_field_theme.dart';
import 'package:flutter/material.dart';

import 'widget_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
   // fontFamily: 'PlayfairDisplay', // 'Rubik',
    brightness: Brightness.light,
    primarySwatch: const MaterialColor(0xFF722C6B, <int, Color>{
      50: Color(0x1A722C6B),
      100: Color(0x33722C6B),
      200: Color(0x4D722C6B),
      300: Color(0x66722C6B),
      400: Color(0x80722C6B),
      500: Color(0xFF722C6B),
      600: Color(0x99722C6B),
      700: Color(0xB3722C6B),
      800: Color(0xCC722C6B),
      900: Color(0xE6722C6B),
    }),

    /*colorScheme: ThemeData().colorScheme.copyWith(
          primary: color7,
        ),*/
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
   // fontFamily: 'PlayfairDisplay',
    brightness: Brightness.dark,
    primarySwatch: Colors.purple,
    textTheme: TTextTheme.darkTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
