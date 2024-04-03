import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sp8/core/common_widgets/alert_dialogs.dart';
import 'package:sp8/core/common_widgets/primary_button.dart';
import 'package:sp8/core/common_widgets/responsive_center.dart';
import 'package:sp8/core/common_widgets/secondary_button.dart';
import 'package:sp8/core/constants/app_sizes.dart';
import 'package:sp8/core/common_widgets/avatar.dart';
import 'package:sp8/features/authentication/presentation/auth_controller.dart';
import 'package:sp8/features/authentication/presentation/change_avatar_screen/change_avatar_screen.dart';
import 'package:sp8/features/authentication/presentation/change_password_screen.dart';
import 'package:sp8/features/authentication/presentation/edit_account_information_screen.dart';
import 'package:sp8/localization/string_hardcoded.dart';

class AccountPage extends ConsumerStatefulWidget {
  const AccountPage({super.key});

  @override
  AccountPageState createState() => AccountPageState();
}

class AccountPageState extends ConsumerState<AccountPage> {
  String? avatarUrl;

  String name = 'John Doe';
  String email = 'john.doe@example.com';
  String nickname = 'Johnny';
  String password = '********';

  void _navigateToUploadAvatar() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ChangeAvatarScreen()));
  }

  void _navigateToEditProfile() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const EditAccountInformationScreen()));
  }

  void _navigateToChangePassword() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ChangePasswordScreen()));
  }

  @override
  Widget build(BuildContext context) {
    // final authRepository = ref.watch(authRepositoryProvider);

    return ResponsiveCenter(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.p12),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Avatar(avatarUrl: avatarUrl),
                    gapH4,
                    SizedBox(
                      child: ElevatedButton(
                        onPressed: _navigateToUploadAvatar,
                        child: const Text('Modify Avatar', style: TextStyle(fontSize: 14)),
                      ),
                    ),
                  ],
                ),
              ),
              _buildDisplayField('Email', email),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: _buildDisplayField('Name', name)),
                        ElevatedButton(
                          onPressed: _navigateToEditProfile,
                          child: const Text('Edit', style: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                    _buildDisplayField('Nickname', nickname),
                  ],
                ),
              ),
              gapH8,
              Row(
                children: [
                  Expanded(child: _buildDisplayField('Password', password)),
                  ElevatedButton(
                    onPressed: _navigateToChangePassword,
                    child: const Text('Change Password', style: TextStyle(fontSize: 14)),
                  ),
                ],
              ),
              gapH8,
              Center(
                child: SizedBox(
                  width: 225,
                  child: LogoutButton(ref: ref),
                ),
              ),
              gapH16,
              Center(
                child: SizedBox(
                  width: 225,
                  child: DeleteButton(ref: ref),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDisplayField(String label, String value) {
    return ListTile(
      title: Text(label),
      subtitle: Text(value),
    );
  }
}

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    super.key,
    required this.ref,
  });

  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      text: 'Logout'.hardcoded,
      onPressed: () async {
        final logout = await showAlertDialog(
          context: context,
          title: 'Are you sure?'.hardcoded,
          cancelActionText: 'Cancel'.hardcoded,
          defaultActionText: 'Logout'.hardcoded,
        );
        if (logout == true) {
          ref.read(authControllerProvider.notifier).signOut();
        }
      },
    );
  }
}

class DeleteButton extends StatelessWidget {
  const DeleteButton({
    super.key,
    required this.ref,
  });

  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return SecondaryButton(
      text: 'Delete Account'.hardcoded,
      onPressed: () async {
        final deleteConfirmed = await showAlertDialog(
          context: context,
          title: 'Delete Account'.hardcoded,
          content: "This action will delete this account and all associated data.".hardcoded,
          cancelActionText: 'Cancel'.hardcoded,
          defaultActionText: 'Confirm'.hardcoded,
        );
        if (deleteConfirmed == true) {
          ref.read(authControllerProvider.notifier).signOut();
        }
      },
    );
  }
}
