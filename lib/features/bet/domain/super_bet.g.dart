// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'super_bet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuperBetImpl _$$SuperBetImplFromJson(Map<String, dynamic> json) =>
    _$SuperBetImpl(
      name: json['name'] as String? ?? "NoName",
      image: json['image'] as String? ?? "trophy-s.jpg",
      bets: (json['bets'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Bet.fromJson(e as Map<String, dynamic>)),
          ) ??
          const {},
    );

Map<String, dynamic> _$$SuperBetImplToJson(_$SuperBetImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'bets': instance.bets,
    };
