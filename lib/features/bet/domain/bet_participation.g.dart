// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bet_participation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BetParticipationImpl _$$BetParticipationImplFromJson(
        Map<String, dynamic> json) =>
    _$BetParticipationImpl(
      participantId: json['participantId'] as String,
      betId: json['betId'] as String,
      isParticipating: json['isParticipating'] as bool,
      choice: json['choice'] as String,
      answer: json['answer'] as String,
    );

Map<String, dynamic> _$$BetParticipationImplToJson(
        _$BetParticipationImpl instance) =>
    <String, dynamic>{
      'participantId': instance.participantId,
      'betId': instance.betId,
      'isParticipating': instance.isParticipating,
      'choice': instance.choice,
      'answer': instance.answer,
    };
