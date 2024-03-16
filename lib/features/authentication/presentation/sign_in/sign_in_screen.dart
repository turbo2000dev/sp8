import 'package:flutter/material.dart';
import 'package:sp8/features/authentication/presentation/auth_screen.dart';
import 'package:sp8/features/authentication/presentation/sign_in/sign_in_form.dart';
import 'package:sp8/features/authentication/presentation/sign_in/sign_in_form_type.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  SignInFormType _currentFormType = SignInFormType.signIn;

  void updateFormType(SignInFormType formType) {
    setState(() {
      _currentFormType = formType;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AuthScreen(screen: SignInForm(currentFormType: _currentFormType, setFormType: updateFormType));
  }
}
