import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sp8/core/common_widgets/branding_banner.dart';
import 'package:sp8/core/common_widgets/primary_button.dart';
import 'package:sp8/core/common_widgets/square_tile.dart';
import 'package:sp8/core/constants/app_colors.dart';
import 'package:sp8/core/constants/app_sizes.dart';
import 'package:sp8/core/constants/image_files.dart';
import 'package:sp8/core/utils/async_value_ui.dart';
import 'package:sp8/core/utils/string_validators.dart';
import 'package:sp8/features/authentication/presentation/auth_controller.dart';
import 'package:sp8/features/authentication/presentation/sign_in/sign_in_form_type.dart';
import 'package:sp8/features/authentication/presentation/sign_in/sign_in_validators.dart';
import 'package:sp8/localization/string_hardcoded.dart';
import 'package:sp8/router/app_router.dart';

/// A widget for email & password authentication, supporting the following:
/// - sign in
/// - register (create an account)
class SignInForm extends ConsumerStatefulWidget {
  const SignInForm({
    super.key,
    required this.currentFormType,
    required this.setFormType,
  });

  final SignInFormType currentFormType;
  final void Function(SignInFormType) setFormType;

  @override
  ConsumerState<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends ConsumerState<SignInForm> with EmailAndPasswordValidators {
  final _formKey = GlobalKey<FormState>();
  final _node = FocusScopeNode();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _verifyPasswordController = TextEditingController();

  // SignInFormType _formType = currentForm.type;
  bool _showPassword = false;

  String get email => _emailController.text;
  String get password => _passwordController.text;
  String get verifyPassword => _verifyPasswordController.text;

  // * Keys for testing using find.byKey()
  static const _emailKey = Key('email');
  static const _passwordKey = Key('password');
  static const _verifyPasswordKey = Key('verifypassword');

  void switchPasswordVisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  // local variable used to apply AutovalidateMode.onUserInteraction and show
  // error hints only when the form has been submitted
  // For more details on how this is implemented, see:
  // https://codewithandrea.com/articles/flutter-text-field-form-validation/
  var _submitted = false;

  @override
  void dispose() {
    // * TextEditingControllers should be always disposed
    _node.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _verifyPasswordController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    setState(() => _submitted = true);
    // only submit the form if validation passes
    if (_formKey.currentState!.validate()) {
      final controller = ref.read(authControllerProvider.notifier);
      final success = await controller.submit(
        email: email,
        password: password,
        formType: widget.currentFormType,
      );
      if (success) {
        // onSubmit function;
      }
    }
  }

  void _emailEditingComplete() {
    if (canSubmitEmail(email)) {
      _node.nextFocus();
    }
  }

  void _passwordEditingComplete() {
    if (!canSubmitEmail(email)) {
      _node.previousFocus();
      return;
    }
    _submit();
  }

  void _verifyPasswordEditingComplete() {
    if (!canSubmitEmail(email)) {
      _node.previousFocus();
      return;
    }
    _submit();
  }

  void _updateFormType() {
    // * Toggle between register and sign in form
    widget.setFormType(widget.currentFormType.secondaryActionFormType);
    _showPassword = false;
    _submitted = false;
    _emailController.clear();
    _passwordController.clear();
    _verifyPasswordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue>(
      authControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );

    final state = ref.watch(authControllerProvider);

    return FocusScope(
      node: _node,
      child: Form(
        key: _formKey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 600),
                child: Column(
                  children: <Widget>[
                    // Welcome banner
                    Text(
                      'Welcome to'.hardcoded,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                      ),
                    ),
                    gapH4,
                    const BrandingBanner(),

                    gapH32,

                    // Main title
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.currentFormType.mainTitle,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        // alternative register/sign in link

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              widget.currentFormType.secondaryButtonLabel,
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 12,
                              ),
                            ),
                            GestureDetector(
                              onTap: state.isLoading ? null : () => _updateFormType(),
                              child: Text(
                                widget.currentFormType.secondaryButtonText,
                                style: const TextStyle(
                                  color: AppColors.linkColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    gapH20,

                    // username textfield
                    TextFormField(
                      key: _emailKey,
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Email'.hardcoded,
                        hintText: 'test@test.com'.hardcoded,
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                        ),
                        enabled: !state.isLoading,
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (email) => !_submitted ? null : emailErrorText(email ?? ''),
                      autocorrect: false,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      keyboardAppearance: Brightness.light,
                      onEditingComplete: () => _emailEditingComplete(),
                      inputFormatters: <TextInputFormatter>[
                        ValidatorInputFormatter(editingValidator: EmailEditingRegexValidator()),
                      ],
                    ),

                    gapH12,

                    // Password field
                    TextFormField(
                      key: _passwordKey,
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: widget.currentFormType.passwordLabelText,
                        prefixIcon: const Icon(
                          Icons.lock_outlined,
                        ),
                        enabled: !state.isLoading,
                        suffixIcon: IconButton(
                          focusNode: FocusNode(skipTraversal: true),
                          icon: Icon(
                            _showPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                          ),
                          onPressed: switchPasswordVisibility,
                        ),
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (password) =>
                          !_submitted ? null : passwordErrorText(password ?? '', widget.currentFormType),
                      obscureText: !_showPassword,
                      autocorrect: false,
                      textInputAction: TextInputAction.done,
                      keyboardAppearance: Brightness.light,
                      onEditingComplete: () => _passwordEditingComplete(),
                    ),

                    gapH8,

                    // Verify Password field
                    if (widget.currentFormType == SignInFormType.register)
                      Column(
                        children: [
                          TextFormField(
                            key: _verifyPasswordKey,
                            controller: _verifyPasswordController,
                            decoration: InputDecoration(
                              labelText: widget.currentFormType.verifyPasswordLabelText,
                              prefixIcon: const Icon(
                                Icons.check_box_outlined,
                              ),
                              enabled: !state.isLoading,
                            ),
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            validator: (verifyPassword) => !_submitted
                                ? null
                                : verifyPasswordErrorText(password, verifyPassword ?? '', widget.currentFormType),
                            obscureText: !_showPassword,
                            autocorrect: false,
                            textInputAction: TextInputAction.done,
                            keyboardAppearance: Brightness.light,
                            onEditingComplete: () => _verifyPasswordEditingComplete(),
                          ),
                          gapH12,
                        ],
                      ),

                    // forgot password?
                    if (widget.currentFormType == SignInFormType.signIn)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: state.isLoading ? null : () => context.goNamed(AppRoute.forgotPassword.name),
                            child: Text(
                              'Forgot Password? '.hardcoded,
                              style: const TextStyle(
                                color: AppColors.linkColor,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),

                    gapH32,

                    // sign in / register button
                    PrimaryButton(
                      text: widget.currentFormType.primaryButtonText,
                      isLoading: state.isLoading,
                      onPressed: state.isLoading ? null : () => _submit(),
                    ),
                    gapH32,

                    // or continue with
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.grey[700],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              'Or continue with'.hardcoded,
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ),

                    gapH24,

                    // google + apple sign in buttons
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SquareTile(imagePath: ImageFiles.googleLogo),
                        SizedBox(width: 25),
                        SquareTile(imagePath: ImageFiles.appleLogo)
                      ],
                    ),
                    gapH32,

                    gapH16,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
