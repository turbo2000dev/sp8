// ignore: depend_on_referenced_packages
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sp8/core/utils/json_converters.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
sealed class UserEntity with _$UserEntity {
  const factory UserEntity({
    @JsonKey(includeIfNull: false, toJson: Converters.id) String? id,
    @JsonKey(name: 'creation_date') @TimestampConverter() DateTime? creationDate,
    @JsonKey(name: 'last_update_date') @TimestampConverter() DateTime? lastUpdateDate,
    String? name,
    required String email,
    String? avatarPath,
  }) = UserEntityData;

  factory UserEntity.fromJson(String id, Map<String, dynamic> json) => _$UserEntityFromJson(json..['id'] = id);
}

class Credentials {
  // this is the user id
  final String id;
  final String? token;

  Credentials({
    required this.id,
    required this.token,
  });

  factory Credentials.fromJson(Map<String, Object?> json) {
    if (!json.containsKey('id') || !json.containsKey('token')) {
      throw Exception('Invalid credentials');
    }
    return Credentials(
      id: json['id']! as String,
      token: json['token']! as String,
    );
  }
}
