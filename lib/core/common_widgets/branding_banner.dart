import 'package:flutter/material.dart';
import 'package:sp8/core/constants/app_colors.dart';
import 'package:sp8/localization/string_hardcoded.dart';

class BrandingBanner extends StatelessWidget {
  const BrandingBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'S U P E R '.hardcoded,
          style: const TextStyle(
            color: AppColors.blackColor,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        Text(
          'B E T'.hardcoded,
          style: const TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ],
    );
  }
}
