import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sp8/core/common_widgets/primary_button.dart';
import 'package:sp8/core/constants/app_colors.dart';
import 'package:sp8/core/constants/app_sizes.dart';
import 'package:sp8/core/utils/async_value_ui.dart';
import 'package:sp8/core/utils/string_validators.dart';
import 'package:sp8/features/authentication/presentation/auth_controller.dart';
import 'package:sp8/features/authentication/presentation/auth_screen.dart';
import 'package:sp8/features/authentication/presentation/sign_in/sign_in_validators.dart';
import 'package:sp8/localization/string_hardcoded.dart';
import 'package:sp8/router/app_router.dart';

class ForgotPasswordScreen extends ConsumerStatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  ConsumerState<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends ConsumerState<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return const AuthScreen(
      screen: ForgotPasswordForm(),
    );
  }
}

class ForgotPasswordForm extends ConsumerStatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  ConsumerState<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends ConsumerState<ForgotPasswordForm> with EmailAndPasswordValidators {
  final _formKey = GlobalKey<FormState>();
  final _node = FocusScopeNode();
  final _emailController = TextEditingController();

  String get email => _emailController.text;

  // * Keys for testing using find.byKey()
  static const _emailKey = Key('email');

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
    super.dispose();
  }

  Future<void> _sendReset() async {
    setState(() => _submitted = true);
    // only submit the form if validation passes
    if (_formKey.currentState!.validate()) {
      final controller = ref.read(authControllerProvider.notifier);
      final success = await controller.sendReset(
        email: email,
      );
      if (success) {
        ref.read(goRouterProvider).goNamed(AppRoute.emailSent.name);
      }
    }
  }

  void _emailEditingComplete() {
    if (canSubmitEmail(email)) {
      _node.nextFocus();
    }
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
                    gapH32,

                    // Main title
                    Text(
                      'Forgot Password?'.hardcoded,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    gapH32,

                    Text(
                      'Enter your e-mail address and we will send you a message to reset your password.'.hardcoded,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),

                    gapH32,

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

                    gapH32,

                    // send email button
                    PrimaryButton(
                      text: 'Send Email'.hardcoded,
                      isLoading: state.isLoading,
                      onPressed: state.isLoading
                          ? null
                          : () async {
                              await _sendReset();
                            },
                    ),

                    gapH32,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account? '.hardcoded,
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 16,
                          ),
                        ),
                        gapH1,
                        GestureDetector(
                          onTap: state.isLoading ? null : () => context.goNamed(AppRoute.signIn.name),
                          child: Text(
                            'Log in '.hardcoded,
                            style: const TextStyle(
                              color: AppColors.linkColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),

                    gapH20,
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
