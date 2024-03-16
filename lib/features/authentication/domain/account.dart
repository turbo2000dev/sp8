import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sp8/features/authentication/domain/app_user.dart';

part 'account.freezed.dart';
part 'account.g.dart';

typedef AccountID = String;
typedef AvatarUrl = String;

@freezed
class Account with _$Account {
  const factory Account({
    required AccountID accountID,
    required String realname,
    required String nickname,
    required AvatarUrl avatarUrl,
    required String emailAddress,
    required UserID uid, // Cross-reference with AppUser
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);
}
