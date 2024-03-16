import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
    required this.avatarUrl,
  });

  final String? avatarUrl;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: avatarUrl != null && avatarUrl!.isNotEmpty ? NetworkImage(avatarUrl!) : null,
      radius: 50,
      child: avatarUrl == null || avatarUrl!.isEmpty ? const Icon(Icons.person, size: 50, color: Colors.grey) : null,
    );
  }
}
