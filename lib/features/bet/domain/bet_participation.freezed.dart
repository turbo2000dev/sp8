// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bet_participation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BetParticipation _$BetParticipationFromJson(Map<String, dynamic> json) {
  return _BetParticipation.fromJson(json);
}

/// @nodoc
mixin _$BetParticipation {
  /// Id of the participant.
  String get participantId => throw _privateConstructorUsedError;

  /// Id of the bet.
  String get betId => throw _privateConstructorUsedError;

  /// Whether the participant participated to this bet.
  bool get isParticipating => throw _privateConstructorUsedError;

  /// Participant's choice for this bet.
  String get choice => throw _privateConstructorUsedError;

  /// Participant's answer for this bet.
  String get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BetParticipationCopyWith<BetParticipation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BetParticipationCopyWith<$Res> {
  factory $BetParticipationCopyWith(
          BetParticipation value, $Res Function(BetParticipation) then) =
      _$BetParticipationCopyWithImpl<$Res, BetParticipation>;
  @useResult
  $Res call(
      {String participantId,
      String betId,
      bool isParticipating,
      String choice,
      String answer});
}

/// @nodoc
class _$BetParticipationCopyWithImpl<$Res, $Val extends BetParticipation>
    implements $BetParticipationCopyWith<$Res> {
  _$BetParticipationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participantId = null,
    Object? betId = null,
    Object? isParticipating = null,
    Object? choice = null,
    Object? answer = null,
  }) {
    return _then(_value.copyWith(
      participantId: null == participantId
          ? _value.participantId
          : participantId // ignore: cast_nullable_to_non_nullable
              as String,
      betId: null == betId
          ? _value.betId
          : betId // ignore: cast_nullable_to_non_nullable
              as String,
      isParticipating: null == isParticipating
          ? _value.isParticipating
          : isParticipating // ignore: cast_nullable_to_non_nullable
              as bool,
      choice: null == choice
          ? _value.choice
          : choice // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BetParticipationImplCopyWith<$Res>
    implements $BetParticipationCopyWith<$Res> {
  factory _$$BetParticipationImplCopyWith(_$BetParticipationImpl value,
          $Res Function(_$BetParticipationImpl) then) =
      __$$BetParticipationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String participantId,
      String betId,
      bool isParticipating,
      String choice,
      String answer});
}

/// @nodoc
class __$$BetParticipationImplCopyWithImpl<$Res>
    extends _$BetParticipationCopyWithImpl<$Res, _$BetParticipationImpl>
    implements _$$BetParticipationImplCopyWith<$Res> {
  __$$BetParticipationImplCopyWithImpl(_$BetParticipationImpl _value,
      $Res Function(_$BetParticipationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participantId = null,
    Object? betId = null,
    Object? isParticipating = null,
    Object? choice = null,
    Object? answer = null,
  }) {
    return _then(_$BetParticipationImpl(
      participantId: null == participantId
          ? _value.participantId
          : participantId // ignore: cast_nullable_to_non_nullable
              as String,
      betId: null == betId
          ? _value.betId
          : betId // ignore: cast_nullable_to_non_nullable
              as String,
      isParticipating: null == isParticipating
          ? _value.isParticipating
          : isParticipating // ignore: cast_nullable_to_non_nullable
              as bool,
      choice: null == choice
          ? _value.choice
          : choice // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BetParticipationImpl implements _BetParticipation {
  _$BetParticipationImpl(
      {required this.participantId,
      required this.betId,
      required this.isParticipating,
      required this.choice,
      required this.answer});

  factory _$BetParticipationImpl.fromJson(Map<String, dynamic> json) =>
      _$$BetParticipationImplFromJson(json);

  /// Id of the participant.
  @override
  final String participantId;

  /// Id of the bet.
  @override
  final String betId;

  /// Whether the participant participated to this bet.
  @override
  final bool isParticipating;

  /// Participant's choice for this bet.
  @override
  final String choice;

  /// Participant's answer for this bet.
  @override
  final String answer;

  @override
  String toString() {
    return 'BetParticipation(participantId: $participantId, betId: $betId, isParticipating: $isParticipating, choice: $choice, answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BetParticipationImpl &&
            (identical(other.participantId, participantId) ||
                other.participantId == participantId) &&
            (identical(other.betId, betId) || other.betId == betId) &&
            (identical(other.isParticipating, isParticipating) ||
                other.isParticipating == isParticipating) &&
            (identical(other.choice, choice) || other.choice == choice) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, participantId, betId, isParticipating, choice, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BetParticipationImplCopyWith<_$BetParticipationImpl> get copyWith =>
      __$$BetParticipationImplCopyWithImpl<_$BetParticipationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BetParticipationImplToJson(
      this,
    );
  }
}

abstract class _BetParticipation implements BetParticipation {
  factory _BetParticipation(
      {required final String participantId,
      required final String betId,
      required final bool isParticipating,
      required final String choice,
      required final String answer}) = _$BetParticipationImpl;

  factory _BetParticipation.fromJson(Map<String, dynamic> json) =
      _$BetParticipationImpl.fromJson;

  @override

  /// Id of the participant.
  String get participantId;
  @override

  /// Id of the bet.
  String get betId;
  @override

  /// Whether the participant participated to this bet.
  bool get isParticipating;
  @override

  /// Participant's choice for this bet.
  String get choice;
  @override

  /// Participant's answer for this bet.
  String get answer;
  @override
  @JsonKey(ignore: true)
  _$$BetParticipationImplCopyWith<_$BetParticipationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
