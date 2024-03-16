import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sp8/core/common_widgets/responsive_center.dart';
import 'package:sp8/core/constants/app_sizes.dart';
import 'package:sp8/features/authentication/data/auth_repository.dart';
import 'package:sp8/features/authentication/presentation/auth_controller.dart';
import 'package:sp8/localization/string_hardcoded.dart';

class ChangePasswordScreen extends ConsumerWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text("Change Password".hardcoded)),
      body: const ResponsiveCenter(
        child: ChangePasswordForm(),
      ),
    );
  }
}

// Make the class public as per the instructions
class ChangePasswordForm extends ConsumerStatefulWidget {
  const ChangePasswordForm({super.key});

  @override
  ChangePasswordFormState createState() => ChangePasswordFormState();
}

class ChangePasswordFormState extends ConsumerState<ChangePasswordForm> {
  final _formKey = GlobalKey<FormState>();

  String _currentPassword = '';
  String _newPassword = '';
  // ignore: unused_field
  String _confirmPassword = '';
  bool _showNewPassword = false;
  bool _showConfirmPassword = false;

  String? _confirmPasswordValidator(value) {
    if (value != _newPassword) {
      return 'Passwords do not match'.hardcoded;
    }
    return null;
  }

  String? _newPasswordValidator(value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your new password'.hardcoded;
    }
    return null;
  }

  String? _passwordValidator(value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your current password'.hardcoded;
    }
    return null;
  }

  void _changePassword() async {
    final controller = ref.read(authControllerProvider.notifier);
    final success = await controller.changePassword(
      currentPassword: _currentPassword,
      newPassword: _newPassword,
    );
    if (success) {
      // onSubmit function;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          gapH16,
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(labelText: 'Current Password'.hardcoded),
            validator: _passwordValidator,
            onSaved: (value) => _currentPassword = value!,
          ),
          gapH8,
          TextFormField(
            obscureText: !_showNewPassword,
            decoration: InputDecoration(
              labelText: 'New Password'.hardcoded,
              suffixIcon: IconButton(
                icon: Icon(_showNewPassword ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  setState(() {
                    _showNewPassword = !_showNewPassword;
                  });
                },
              ),
            ),
            validator: _newPasswordValidator,
            onChanged: (value) => _newPassword = value,
            onSaved: (value) => _newPassword = value!,
          ),
          gapH8,
          TextFormField(
            obscureText: !_showConfirmPassword,
            decoration: InputDecoration(
              labelText: 'Confirm New Password'.hardcoded,
              suffixIcon: IconButton(
                icon: Icon(_showConfirmPassword ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  setState(() {
                    _showConfirmPassword = !_showConfirmPassword;
                  });
                },
              ),
            ),
            validator: _confirmPasswordValidator,
            onChanged: (value) => _confirmPassword = value,
            onSaved: (value) => _confirmPassword = value!,
          ),
          gapH16,
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      _changePassword();
                      AuthRepository authRepository = ref.read(authRepositoryProvider);
                      try {
                        await authRepository.changePassword(_currentPassword, _newPassword);
                        // Success logic here
                      } catch (e) {
                        // Error handling here
                        debugPrint(e.toString());
                      }
                    }
                  },
                  child: Text('Change Password'.hardcoded),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
