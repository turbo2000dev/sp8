import 'package:flutter/material.dart';
import 'package:sp8/core/common_widgets/responsive_center.dart';
import 'package:sp8/core/constants/app_sizes.dart';
import 'package:sp8/core/common_widgets/avatar.dart';
import 'package:sp8/localization/string_hardcoded.dart';

class ChangeAvatarScreen extends StatelessWidget {
  const ChangeAvatarScreen({super.key});

  static const avatarUrl = '';

  void _selectAvatar() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Modify Avatar'.hardcoded)),
      body: ResponsiveCenter(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: <Widget>[
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  gapH8,
                  const Avatar(avatarUrl: avatarUrl),
                  gapH16,
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: _selectAvatar,
                          child: Text('Upload File'.hardcoded, style: const TextStyle(fontSize: 14)),
                        ),
                      ),
                    ],
                  ),
                  gapH4,
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: _selectAvatar,
                          child: Text('Select from Library'.hardcoded, style: const TextStyle(fontSize: 14)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
