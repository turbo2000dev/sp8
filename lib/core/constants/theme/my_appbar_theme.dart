import 'package:flutter/material.dart';
import 'package:sp8/core/constants/app_colors.dart';

class MyAppBarTheme {
  MyAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    backgroundColor: AppColors.whiteColor,
    surfaceTintColor: AppColors.whiteColor,
    titleTextStyle: TextStyle(
      fontSize: 22.0,
      color: AppColors.blackColor,
    ),
    // iconTheme: IconThemeData(
    //   color: AppColors.primarySeedColor,
    //   size: 18.0,
    // ),
    // actionsIconTheme: IconThemeData(
    //   color: AppColors.primarySeedColor,
    //   size: 18.0,
    // ),
  );

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    // iconTheme: IconThemeData(
    //   color: AppColors.whiteColor,
    //   size: 18.0,
    // ),
    // actionsIconTheme: IconThemeData(
    //   color: AppColors.whiteColor,
    //   size: 18.0,
    // ),
  );
}
