import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sp8/core/common_widgets/primary_button.dart';
import 'package:sp8/core/constants/app_sizes.dart';
import 'package:sp8/features/authentication/presentation/auth_screen.dart';
import 'package:sp8/localization/string_hardcoded.dart';
import 'package:sp8/router/app_router.dart';

class EmailSentScreen extends ConsumerWidget {
  const EmailSentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AuthScreen(
      screen: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: Column(
                children: <Widget>[
                  gapH32,

                  // Main title
                  Text(
                    'Password Reset email has been sent'.hardcoded,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  gapH32,

                  Text(
                    'Check you inbox for the Password Reset email and follow instructions.'.hardcoded,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),

                  gapH32,

                  // send email button
                  PrimaryButton(
                    text: 'Return to Sign In'.hardcoded,
                    onPressed: () => ref.read(goRouterProvider).goNamed(AppRoute.signIn.name),
                  ),

                  gapH20,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
