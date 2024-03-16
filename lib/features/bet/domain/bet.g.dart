// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BetImpl _$$BetImplFromJson(Map<String, dynamic> json) => _$BetImpl(
      id: json['id'] ?? "",
      status: $enumDecode(_$BetStatusEnumMap, json['status']),
      definition: json['definition'] == null
          ? null
          : BetDefinition.fromJson(json['definition'] as Map<String, dynamic>),
      numberOfParticipants: json['numberOfParticipants'] as int? ?? 0,
      totalPrize: (json['totalPrize'] as num?)?.toDouble() ?? 0.0,
      finalChoice: json['finalChoice'] as String? ?? "",
      finalAnswer: json['finalAnswer'] as String? ?? "",
      numberOfWinners: json['numberOfWinners'] as int? ?? 0,
    );

Map<String, dynamic> _$$BetImplToJson(_$BetImpl instance) => <String, dynamic>{
      'id': instance.id,
      'status': _$BetStatusEnumMap[instance.status]!,
      'definition': instance.definition,
      'numberOfParticipants': instance.numberOfParticipants,
      'totalPrize': instance.totalPrize,
      'finalChoice': instance.finalChoice,
      'finalAnswer': instance.finalAnswer,
      'numberOfWinners': instance.numberOfWinners,
    };

const _$BetStatusEnumMap = {
  BetStatus.draft: 'draft',
  BetStatus.open: 'open',
  BetStatus.closed: 'closed',
  BetStatus.completed: 'completed',
};
