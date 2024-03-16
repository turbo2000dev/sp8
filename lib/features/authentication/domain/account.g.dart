// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountImpl _$$AccountImplFromJson(Map<String, dynamic> json) =>
    _$AccountImpl(
      accountID: json['accountID'] as String,
      realname: json['realname'] as String,
      nickname: json['nickname'] as String,
      avatarUrl: json['avatarUrl'] as String,
      emailAddress: json['emailAddress'] as String,
      uid: json['uid'] as String,
    );

Map<String, dynamic> _$$AccountImplToJson(_$AccountImpl instance) =>
    <String, dynamic>{
      'accountID': instance.accountID,
      'realname': instance.realname,
      'nickname': instance.nickname,
      'avatarUrl': instance.avatarUrl,
      'emailAddress': instance.emailAddress,
      'uid': instance.uid,
    };
