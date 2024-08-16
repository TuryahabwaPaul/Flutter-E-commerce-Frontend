import 'package:ecommerce/utils/theme/custom%20themes/appbar_theme.dart';
import 'package:ecommerce/utils/theme/custom%20themes/bottom_sheet_theme.dart';
import 'package:ecommerce/utils/theme/custom%20themes/checkbox_theme.dart';
import 'package:ecommerce/utils/theme/custom%20themes/chip_theme.dart';
import 'package:ecommerce/utils/theme/custom%20themes/elevated_button_theme.dart';
import 'package:ecommerce/utils/theme/custom%20themes/outlined_button_theme.dart';
import 'package:ecommerce/utils/theme/custom%20themes/text_field_theme.dart';
import 'package:ecommerce/utils/theme/custom%20themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    chipTheme: TchipTheme.lightchipTheme,
    appBarTheme: TAppbarTheme.lightAppBarTheme,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
    bottomSheetTheme: TbottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: TcheckboxTheme.lightCheckboxTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    chipTheme: TchipTheme.darkchipTheme,
    textTheme: TTextTheme.darkTextTheme,
    appBarTheme: TAppbarTheme.darkAppbarTheme,
    checkboxTheme: TcheckboxTheme.darkCheckboxTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
    bottomSheetTheme: TbottomSheetTheme.darkBottomSheetTheme,
  );
}
