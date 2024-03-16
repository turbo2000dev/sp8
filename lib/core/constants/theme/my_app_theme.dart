import 'package:flutter/material.dart';
import 'package:sp8/core/constants/app_colors.dart';
import 'package:sp8/core/constants/theme/my_appbar_theme.dart';
import 'package:sp8/core/constants/theme/my_elevated_button_theme.dart';
import 'package:sp8/core/constants/theme/my_navigation_bar_theme.dart';
import 'package:sp8/core/constants/theme/my_outlined_button_theme.dart';
import 'package:sp8/core/constants/theme/my_text_field_theme.dart';
import 'package:sp8/core/constants/theme/my_text_theme.dart';

class MyAppTheme {
  MyAppTheme._();

  static ColorScheme lightColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: AppColors.seedColor,
    background: AppColors.whiteColor,
  );

  static ColorScheme darkColorTheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: AppColors.seedColor,
  );

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme,
    textTheme: MyTextTheme.lightTextTheme,
    appBarTheme: MyAppBarTheme.lightAppBarTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButtonTheme(lightColorScheme),
    navigationBarTheme: MyNavigationBarTheme.lightNavigationBarTheme(lightColorScheme),
    outlinedButtonTheme: MyOutlinedButtonTheme.lightOutlinedButtonTheme,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(),
    inputDecorationTheme: MyTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: darkColorTheme,
    textTheme: MyTextTheme.darkTextTheme,
    appBarTheme: MyAppBarTheme.darkAppBarTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.darkElevatedButtonTheme(darkColorTheme),
    outlinedButtonTheme: MyOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: MyTextFormFieldTheme.darkInputDecorationTheme,
  );
}
