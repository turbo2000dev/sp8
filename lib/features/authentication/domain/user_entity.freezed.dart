// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) {
  return UserEntityData.fromJson(json);
}

/// @nodoc
mixin _$UserEntity {
  @JsonKey(includeIfNull: false, toJson: Converters.id)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'creation_date')
  @TimestampConverter()
  DateTime? get creationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_update_date')
  @TimestampConverter()
  DateTime? get lastUpdateDate => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get avatarPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserEntityCopyWith<UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) then) =
      _$UserEntityCopyWithImpl<$Res, UserEntity>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false, toJson: Converters.id) String? id,
      @JsonKey(name: 'creation_date')
      @TimestampConverter()
      DateTime? creationDate,
      @JsonKey(name: 'last_update_date')
      @TimestampConverter()
      DateTime? lastUpdateDate,
      String? name,
      String email,
      String? avatarPath});
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res, $Val extends UserEntity>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? creationDate = freezed,
    Object? lastUpdateDate = freezed,
    Object? name = freezed,
    Object? email = null,
    Object? avatarPath = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdateDate: freezed == lastUpdateDate
          ? _value.lastUpdateDate
          : lastUpdateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatarPath: freezed == avatarPath
          ? _value.avatarPath
          : avatarPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserEntityDataImplCopyWith<$Res>
    implements $UserEntityCopyWith<$Res> {
  factory _$$UserEntityDataImplCopyWith(_$UserEntityDataImpl value,
          $Res Function(_$UserEntityDataImpl) then) =
      __$$UserEntityDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false, toJson: Converters.id) String? id,
      @JsonKey(name: 'creation_date')
      @TimestampConverter()
      DateTime? creationDate,
      @JsonKey(name: 'last_update_date')
      @TimestampConverter()
      DateTime? lastUpdateDate,
      String? name,
      String email,
      String? avatarPath});
}

/// @nodoc
class __$$UserEntityDataImplCopyWithImpl<$Res>
    extends _$UserEntityCopyWithImpl<$Res, _$UserEntityDataImpl>
    implements _$$UserEntityDataImplCopyWith<$Res> {
  __$$UserEntityDataImplCopyWithImpl(
      _$UserEntityDataImpl _value, $Res Function(_$UserEntityDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? creationDate = freezed,
    Object? lastUpdateDate = freezed,
    Object? name = freezed,
    Object? email = null,
    Object? avatarPath = freezed,
  }) {
    return _then(_$UserEntityDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdateDate: freezed == lastUpdateDate
          ? _value.lastUpdateDate
          : lastUpdateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatarPath: freezed == avatarPath
          ? _value.avatarPath
          : avatarPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserEntityDataImpl implements UserEntityData {
  const _$UserEntityDataImpl(
      {@JsonKey(includeIfNull: false, toJson: Converters.id) this.id,
      @JsonKey(name: 'creation_date') @TimestampConverter() this.creationDate,
      @JsonKey(name: 'last_update_date')
      @TimestampConverter()
      this.lastUpdateDate,
      this.name,
      required this.email,
      this.avatarPath});

  factory _$UserEntityDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserEntityDataImplFromJson(json);

  @override
  @JsonKey(includeIfNull: false, toJson: Converters.id)
  final String? id;
  @override
  @JsonKey(name: 'creation_date')
  @TimestampConverter()
  final DateTime? creationDate;
  @override
  @JsonKey(name: 'last_update_date')
  @TimestampConverter()
  final DateTime? lastUpdateDate;
  @override
  final String? name;
  @override
  final String email;
  @override
  final String? avatarPath;

  @override
  String toString() {
    return 'UserEntity(id: $id, creationDate: $creationDate, lastUpdateDate: $lastUpdateDate, name: $name, email: $email, avatarPath: $avatarPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEntityDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.lastUpdateDate, lastUpdateDate) ||
                other.lastUpdateDate == lastUpdateDate) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatarPath, avatarPath) ||
                other.avatarPath == avatarPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, creationDate, lastUpdateDate, name, email, avatarPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEntityDataImplCopyWith<_$UserEntityDataImpl> get copyWith =>
      __$$UserEntityDataImplCopyWithImpl<_$UserEntityDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserEntityDataImplToJson(
      this,
    );
  }
}

abstract class UserEntityData implements UserEntity {
  const factory UserEntityData(
      {@JsonKey(includeIfNull: false, toJson: Converters.id) final String? id,
      @JsonKey(name: 'creation_date')
      @TimestampConverter()
      final DateTime? creationDate,
      @JsonKey(name: 'last_update_date')
      @TimestampConverter()
      final DateTime? lastUpdateDate,
      final String? name,
      required final String email,
      final String? avatarPath}) = _$UserEntityDataImpl;

  factory UserEntityData.fromJson(Map<String, dynamic> json) =
      _$UserEntityDataImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false, toJson: Converters.id)
  String? get id;
  @override
  @JsonKey(name: 'creation_date')
  @TimestampConverter()
  DateTime? get creationDate;
  @override
  @JsonKey(name: 'last_update_date')
  @TimestampConverter()
  DateTime? get lastUpdateDate;
  @override
  String? get name;
  @override
  String get email;
  @override
  String? get avatarPath;
  @override
  @JsonKey(ignore: true)
  _$$UserEntityDataImplCopyWith<_$UserEntityDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
