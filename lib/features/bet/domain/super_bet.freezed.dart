// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'super_bet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SuperBet _$SuperBetFromJson(Map<String, dynamic> json) {
  return _SuperBet.fromJson(json);
}

/// @nodoc
mixin _$SuperBet {
  /// The name of the SuperBet.
  String get name => throw _privateConstructorUsedError;

  /// The image for the SuperBet.
  String get image => throw _privateConstructorUsedError;

  /// The list of all bets.
  Map<String, Bet> get bets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuperBetCopyWith<SuperBet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuperBetCopyWith<$Res> {
  factory $SuperBetCopyWith(SuperBet value, $Res Function(SuperBet) then) =
      _$SuperBetCopyWithImpl<$Res, SuperBet>;
  @useResult
  $Res call({String name, String image, Map<String, Bet> bets});
}

/// @nodoc
class _$SuperBetCopyWithImpl<$Res, $Val extends SuperBet>
    implements $SuperBetCopyWith<$Res> {
  _$SuperBetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? bets = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      bets: null == bets
          ? _value.bets
          : bets // ignore: cast_nullable_to_non_nullable
              as Map<String, Bet>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuperBetImplCopyWith<$Res>
    implements $SuperBetCopyWith<$Res> {
  factory _$$SuperBetImplCopyWith(
          _$SuperBetImpl value, $Res Function(_$SuperBetImpl) then) =
      __$$SuperBetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String image, Map<String, Bet> bets});
}

/// @nodoc
class __$$SuperBetImplCopyWithImpl<$Res>
    extends _$SuperBetCopyWithImpl<$Res, _$SuperBetImpl>
    implements _$$SuperBetImplCopyWith<$Res> {
  __$$SuperBetImplCopyWithImpl(
      _$SuperBetImpl _value, $Res Function(_$SuperBetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? bets = null,
  }) {
    return _then(_$SuperBetImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      bets: null == bets
          ? _value._bets
          : bets // ignore: cast_nullable_to_non_nullable
              as Map<String, Bet>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuperBetImpl implements _SuperBet {
  _$SuperBetImpl(
      {this.name = "NoName",
      this.image = "trophy-s.jpg",
      final Map<String, Bet> bets = const {}})
      : _bets = bets;

  factory _$SuperBetImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuperBetImplFromJson(json);

  /// The name of the SuperBet.
  @override
  @JsonKey()
  final String name;

  /// The image for the SuperBet.
  @override
  @JsonKey()
  final String image;

  /// The list of all bets.
  final Map<String, Bet> _bets;

  /// The list of all bets.
  @override
  @JsonKey()
  Map<String, Bet> get bets {
    if (_bets is EqualUnmodifiableMapView) return _bets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_bets);
  }

  @override
  String toString() {
    return 'SuperBet(name: $name, image: $image, bets: $bets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuperBetImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._bets, _bets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, image, const DeepCollectionEquality().hash(_bets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuperBetImplCopyWith<_$SuperBetImpl> get copyWith =>
      __$$SuperBetImplCopyWithImpl<_$SuperBetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuperBetImplToJson(
      this,
    );
  }
}

abstract class _SuperBet implements SuperBet {
  factory _SuperBet(
      {final String name,
      final String image,
      final Map<String, Bet> bets}) = _$SuperBetImpl;

  factory _SuperBet.fromJson(Map<String, dynamic> json) =
      _$SuperBetImpl.fromJson;

  @override

  /// The name of the SuperBet.
  String get name;
  @override

  /// The image for the SuperBet.
  String get image;
  @override

  /// The list of all bets.
  Map<String, Bet> get bets;
  @override
  @JsonKey(ignore: true)
  _$$SuperBetImplCopyWith<_$SuperBetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
