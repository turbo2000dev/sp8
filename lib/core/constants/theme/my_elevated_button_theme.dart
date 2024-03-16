import 'package:flutter/material.dart';
import 'package:sp8/core/constants/app_sizes.dart';

class MyElevatedButtonTheme {
  MyElevatedButtonTheme._(); // Prevent instantiation

  /* -- Light Theme -- */
  static ElevatedButtonThemeData lightElevatedButtonTheme(ColorScheme colorScheme) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorScheme.onInverseSurface,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.borderRadius)),
      ),
    );
  }

  /* -- Dark Theme -- */
  static ElevatedButtonThemeData darkElevatedButtonTheme(ColorScheme colorScheme) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorScheme.onInverseSurface,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.borderRadius)),
      ),
    );
  }
}
