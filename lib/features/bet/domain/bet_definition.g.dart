// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bet_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BetDefinitionImpl _$$BetDefinitionImplFromJson(Map<String, dynamic> json) =>
    _$BetDefinitionImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String? ?? '',
      notes: json['notes'] as String? ?? '',
      amount: (json['amount'] as num?)?.toDouble() ?? 0.0,
      betType: $enumDecodeNullable(_$BetTypeEnumMap, json['bet_type']) ??
          BetType.closestUnder,
      choices:
          (json['choices'] as List<dynamic>?)?.map((e) => e as String).toList(),
      choicesAbbreviation: (json['choices_abbreviation'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      unitType: $enumDecodeNullable(_$UnitTypeEnumMap, json['unit_type']),
      mandatory: json['mandatory'] as bool? ?? false,
      duplicatesAllowed: json['duplicates_allowed'] as bool? ?? false,
    );

Map<String, dynamic> _$$BetDefinitionImplToJson(_$BetDefinitionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'notes': instance.notes,
      'amount': instance.amount,
      'bet_type': _$BetTypeEnumMap[instance.betType]!,
      'choices': instance.choices,
      'choices_abbreviation': instance.choicesAbbreviation,
      'unit_type': _$UnitTypeEnumMap[instance.unitType],
      'mandatory': instance.mandatory,
      'duplicates_allowed': instance.duplicatesAllowed,
    };

const _$BetTypeEnumMap = {
  BetType.multipleChoices: 'multipleChoices',
  BetType.closestUnder: 'closestUnder',
  BetType.closestOver: 'closestOver',
  BetType.closest: 'closest',
  BetType.closestUnderWithChoices: 'closestUnderWithChoices',
  BetType.closestOverWithChoices: 'closestOverWithChoices',
  BetType.closestWithChoices: 'closestWithChoices',
};

const _$UnitTypeEnumMap = {
  UnitType.integer: 'integer',
  UnitType.floating: 'floating',
  UnitType.timeSeconds: 'timeSeconds',
  UnitType.timeMinutes: 'timeMinutes',
};
