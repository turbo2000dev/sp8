import 'package:sp8/core/utils/string_validators.dart';
import 'package:sp8/features/authentication/presentation/sign_in/sign_in_form_type.dart';
import 'package:sp8/localization/string_hardcoded.dart';

/// Mixin class to be used for client-side email & password validation
mixin EmailAndPasswordValidators {
  final StringValidator emailSubmitValidator = EmailSubmitRegexValidator();
  final StringValidator passwordRegisterSubmitValidator = MinLengthStringValidator(8);
  final StringValidator passwordSignInSubmitValidator = NonEmptyStringValidator();

  bool canSubmitEmail(String email) {
    return emailSubmitValidator.isValid(email);
  }

  bool canSubmitPassword(String password, SignInFormType formType) {
    if (formType == SignInFormType.register) {
      return passwordRegisterSubmitValidator.isValid(password);
    }
    return passwordSignInSubmitValidator.isValid(password);
  }

  bool canSubmitVerifyPassword(String password, String verifyPassword, SignInFormType formType) {
    if (formType == SignInFormType.register) {
      return password == verifyPassword;
    }
    return true;
  }

  String? emailErrorText(String email) {
    final bool showErrorText = !canSubmitEmail(email);
    final String errorText = email.isEmpty ? 'Email can\'t be empty'.hardcoded : 'Invalid email'.hardcoded;
    return showErrorText ? errorText : null;
  }

  String? passwordErrorText(String password, SignInFormType formType) {
    final bool showErrorText = !canSubmitPassword(password, formType);
    final String errorText =
        password.isEmpty ? 'Password can\'t be empty'.hardcoded : 'Password is too short'.hardcoded;
    return showErrorText ? errorText : null;
  }

  String? verifyPasswordErrorText(String password, String verifyPasword, SignInFormType formType) {
    final bool showErrorText = !canSubmitVerifyPassword(password, verifyPasword, formType);
    final String errorText = "Passwords don't match.".hardcoded;
    return showErrorText ? errorText : null;
  }
}
