import 'package:flutter/material.dart';

class MyNavigationBarTheme {
  MyNavigationBarTheme._(); // Prevent instantiation

  /* -- Light Theme -- */
  static NavigationBarThemeData lightNavigationBarTheme(
      ColorScheme colorScheme) {
    return NavigationBarThemeData(backgroundColor: colorScheme.surface);
  }

  /* -- Dark Theme -- */
  static NavigationBarThemeData darkNavigationBarTheme(
      ColorScheme colorScheme) {
    return NavigationBarThemeData(backgroundColor: colorScheme.surface);
  }
}
