import 'package:flutter/material.dart';
import 'package:sp8/core/constants/app_colors.dart';
import 'package:sp8/core/constants/app_sizes.dart';

/// Secondary button based on [ElevatedButton].
/// Useful for CTAs in the app.
/// @param text - text to display on the button.
/// @param isLoading - if true, a loading indicator will be displayed instead of
/// the text.
/// @param onPressed - callback to be called when the button is pressed.
class SecondaryButton extends StatelessWidget {
  const SecondaryButton({super.key, required this.text, this.fontSize = 16, this.isLoading = false, this.onPressed});

  final String text;
  final double fontSize;
  final bool isLoading;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.p48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          backgroundColor: AppColors.whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          side: const BorderSide(
            width: 2.0,
            color: Colors.red, // Specify border color here
          ),
        ),
        onPressed: onPressed,
        child: isLoading
            ? const CircularProgressIndicator()
            : Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: fontSize,
                ),
              ),
      ),
    );
  }
}
