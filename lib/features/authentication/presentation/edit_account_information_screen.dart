import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sp8/core/common_widgets/responsive_center.dart';
import 'package:sp8/core/constants/app_sizes.dart';
import 'package:sp8/localization/string_hardcoded.dart';

class EditAccountInformationScreen extends ConsumerStatefulWidget {
  const EditAccountInformationScreen({super.key});

  @override
  EditAccountScreenState createState() => EditAccountScreenState();
}

class EditAccountScreenState extends ConsumerState<EditAccountInformationScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _nicknameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _nicknameController.dispose();
    super.dispose();
  }

  void _saveProfile() {
    // Implement the save logic
    // Example: ref.read(userProfileProvider.notifier).updateProfile(_nameController.text, _emailController.text, _nicknameController.text);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Information'.hardcoded),
      ),
      body: ResponsiveCenter(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.p16),
          children: [
            Column(
              children: [
                gapH16,
                TextField(
                  decoration: InputDecoration(labelText: "Name".hardcoded),
                  controller: _nameController,
                ),
                gapH8,
                TextField(
                  decoration: InputDecoration(labelText: "Nickname".hardcoded),
                  controller: _nicknameController,
                ),
                gapH24,
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: _saveProfile,
                        child: Text('Save Changes'.hardcoded),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
