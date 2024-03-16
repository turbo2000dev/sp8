import 'package:sp8/localization/string_hardcoded.dart';

/// Form type for email & password authentication
enum SignInFormType { signIn, register }

extension SignInFormTypeX on SignInFormType {
  String get mainTitle {
    switch (this) {
      case SignInFormType.register:
        return ' Register'.hardcoded;
      case SignInFormType.signIn:
        return ' Sign in'.hardcoded;
    }
  }

  String get primaryButtonText {
    switch (this) {
      case SignInFormType.register:
        return 'Create an account'.hardcoded;
      case SignInFormType.signIn:
        return 'Sign in'.hardcoded;
    }
  }

  String get secondaryButtonText {
    switch (this) {
      case SignInFormType.register:
        return 'Sign in '.hardcoded;
      case SignInFormType.signIn:
        return 'Register '.hardcoded;
    }
  }

  String get secondaryButtonLabel {
    switch (this) {
      case SignInFormType.register:
        return 'Already have an account?'.hardcoded;
      case SignInFormType.signIn:
        return "Don't have an account?".hardcoded;
    }
  }

  SignInFormType get secondaryActionFormType {
    switch (this) {
      case SignInFormType.register:
        return SignInFormType.signIn;
      case SignInFormType.signIn:
        return SignInFormType.register;
    }
  }

  // String get errorAlertTitle {
  //   switch (this) {
  //     case SignInFormType.register:
  //       return 'Registration failed'.hardcoded;
  //     case SignInFormType.signIn:
  //       return 'Sign in failed'.hardcoded;
  //   }
  // }

  String get passwordLabelText {
    switch (this) {
      case SignInFormType.register:
        return 'Password (8+ characters)'.hardcoded;
      case SignInFormType.signIn:
        return 'Password'.hardcoded;
    }
  }

  String get verifyPasswordLabelText {
    switch (this) {
      case SignInFormType.register:
        return 'Verify Password'.hardcoded;
      case SignInFormType.signIn:
        return ''.hardcoded;
    }
  }
}
