// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserEntityDataImpl _$$UserEntityDataImplFromJson(Map<String, dynamic> json) =>
    _$UserEntityDataImpl(
      id: json['id'] as String?,
      creationDate: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['creation_date'], const TimestampConverter().fromJson),
      lastUpdateDate: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['last_update_date'], const TimestampConverter().fromJson),
      name: json['name'] as String?,
      email: json['email'] as String,
      avatarPath: json['avatarPath'] as String?,
    );

Map<String, dynamic> _$$UserEntityDataImplToJson(
    _$UserEntityDataImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', Converters.id(instance.id));
  val['creation_date'] = _$JsonConverterToJson<Timestamp, DateTime>(
      instance.creationDate, const TimestampConverter().toJson);
  val['last_update_date'] = _$JsonConverterToJson<Timestamp, DateTime>(
      instance.lastUpdateDate, const TimestampConverter().toJson);
  val['name'] = instance.name;
  val['email'] = instance.email;
  val['avatarPath'] = instance.avatarPath;
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
