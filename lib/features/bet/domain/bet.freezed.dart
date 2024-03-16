// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Bet _$BetFromJson(Map<String, dynamic> json) {
  return _Bet.fromJson(json);
}

/// @nodoc
mixin _$Bet {
  /// The Bet identifier.
  dynamic get id => throw _privateConstructorUsedError;

  /// Current status of this bet.
  BetStatus get status => throw _privateConstructorUsedError;

  /// Definition of this bet.
  BetDefinition? get definition => throw _privateConstructorUsedError;

  /// Number of participants to this bet. This value is computed from the list
  /// of bet participation.
  int get numberOfParticipants => throw _privateConstructorUsedError;

  /// Total value of the bet prize. This value is computed from the list of bet
  /// participation.
  double get totalPrize => throw _privateConstructorUsedError;

  /// Result of the bet - string for choice.
  String get finalChoice => throw _privateConstructorUsedError;

  /// Result of the bet - numberic value.
  String get finalAnswer => throw _privateConstructorUsedError;

  /// Number of winners for this bet. This value is computed from the bet final
  /// result.
  int get numberOfWinners => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BetCopyWith<Bet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BetCopyWith<$Res> {
  factory $BetCopyWith(Bet value, $Res Function(Bet) then) =
      _$BetCopyWithImpl<$Res, Bet>;
  @useResult
  $Res call(
      {dynamic id,
      BetStatus status,
      BetDefinition? definition,
      int numberOfParticipants,
      double totalPrize,
      String finalChoice,
      String finalAnswer,
      int numberOfWinners});

  $BetDefinitionCopyWith<$Res>? get definition;
}

/// @nodoc
class _$BetCopyWithImpl<$Res, $Val extends Bet> implements $BetCopyWith<$Res> {
  _$BetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = null,
    Object? definition = freezed,
    Object? numberOfParticipants = null,
    Object? totalPrize = null,
    Object? finalChoice = null,
    Object? finalAnswer = null,
    Object? numberOfWinners = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BetStatus,
      definition: freezed == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as BetDefinition?,
      numberOfParticipants: null == numberOfParticipants
          ? _value.numberOfParticipants
          : numberOfParticipants // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrize: null == totalPrize
          ? _value.totalPrize
          : totalPrize // ignore: cast_nullable_to_non_nullable
              as double,
      finalChoice: null == finalChoice
          ? _value.finalChoice
          : finalChoice // ignore: cast_nullable_to_non_nullable
              as String,
      finalAnswer: null == finalAnswer
          ? _value.finalAnswer
          : finalAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfWinners: null == numberOfWinners
          ? _value.numberOfWinners
          : numberOfWinners // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BetDefinitionCopyWith<$Res>? get definition {
    if (_value.definition == null) {
      return null;
    }

    return $BetDefinitionCopyWith<$Res>(_value.definition!, (value) {
      return _then(_value.copyWith(definition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BetImplCopyWith<$Res> implements $BetCopyWith<$Res> {
  factory _$$BetImplCopyWith(_$BetImpl value, $Res Function(_$BetImpl) then) =
      __$$BetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      BetStatus status,
      BetDefinition? definition,
      int numberOfParticipants,
      double totalPrize,
      String finalChoice,
      String finalAnswer,
      int numberOfWinners});

  @override
  $BetDefinitionCopyWith<$Res>? get definition;
}

/// @nodoc
class __$$BetImplCopyWithImpl<$Res> extends _$BetCopyWithImpl<$Res, _$BetImpl>
    implements _$$BetImplCopyWith<$Res> {
  __$$BetImplCopyWithImpl(_$BetImpl _value, $Res Function(_$BetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = null,
    Object? definition = freezed,
    Object? numberOfParticipants = null,
    Object? totalPrize = null,
    Object? finalChoice = null,
    Object? finalAnswer = null,
    Object? numberOfWinners = null,
  }) {
    return _then(_$BetImpl(
      id: freezed == id ? _value.id! : id,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BetStatus,
      definition: freezed == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as BetDefinition?,
      numberOfParticipants: null == numberOfParticipants
          ? _value.numberOfParticipants
          : numberOfParticipants // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrize: null == totalPrize
          ? _value.totalPrize
          : totalPrize // ignore: cast_nullable_to_non_nullable
              as double,
      finalChoice: null == finalChoice
          ? _value.finalChoice
          : finalChoice // ignore: cast_nullable_to_non_nullable
              as String,
      finalAnswer: null == finalAnswer
          ? _value.finalAnswer
          : finalAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfWinners: null == numberOfWinners
          ? _value.numberOfWinners
          : numberOfWinners // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BetImpl implements _Bet {
  _$BetImpl(
      {this.id = "",
      required this.status,
      required this.definition,
      this.numberOfParticipants = 0,
      this.totalPrize = 0.0,
      this.finalChoice = "",
      this.finalAnswer = "",
      this.numberOfWinners = 0});

  factory _$BetImpl.fromJson(Map<String, dynamic> json) =>
      _$$BetImplFromJson(json);

  /// The Bet identifier.
  @override
  @JsonKey()
  final dynamic id;

  /// Current status of this bet.
  @override
  final BetStatus status;

  /// Definition of this bet.
  @override
  final BetDefinition? definition;

  /// Number of participants to this bet. This value is computed from the list
  /// of bet participation.
  @override
  @JsonKey()
  final int numberOfParticipants;

  /// Total value of the bet prize. This value is computed from the list of bet
  /// participation.
  @override
  @JsonKey()
  final double totalPrize;

  /// Result of the bet - string for choice.
  @override
  @JsonKey()
  final String finalChoice;

  /// Result of the bet - numberic value.
  @override
  @JsonKey()
  final String finalAnswer;

  /// Number of winners for this bet. This value is computed from the bet final
  /// result.
  @override
  @JsonKey()
  final int numberOfWinners;

  @override
  String toString() {
    return 'Bet(id: $id, status: $status, definition: $definition, numberOfParticipants: $numberOfParticipants, totalPrize: $totalPrize, finalChoice: $finalChoice, finalAnswer: $finalAnswer, numberOfWinners: $numberOfWinners)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BetImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.definition, definition) ||
                other.definition == definition) &&
            (identical(other.numberOfParticipants, numberOfParticipants) ||
                other.numberOfParticipants == numberOfParticipants) &&
            (identical(other.totalPrize, totalPrize) ||
                other.totalPrize == totalPrize) &&
            (identical(other.finalChoice, finalChoice) ||
                other.finalChoice == finalChoice) &&
            (identical(other.finalAnswer, finalAnswer) ||
                other.finalAnswer == finalAnswer) &&
            (identical(other.numberOfWinners, numberOfWinners) ||
                other.numberOfWinners == numberOfWinners));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      status,
      definition,
      numberOfParticipants,
      totalPrize,
      finalChoice,
      finalAnswer,
      numberOfWinners);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BetImplCopyWith<_$BetImpl> get copyWith =>
      __$$BetImplCopyWithImpl<_$BetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BetImplToJson(
      this,
    );
  }
}

abstract class _Bet implements Bet {
  factory _Bet(
      {final dynamic id,
      required final BetStatus status,
      required final BetDefinition? definition,
      final int numberOfParticipants,
      final double totalPrize,
      final String finalChoice,
      final String finalAnswer,
      final int numberOfWinners}) = _$BetImpl;

  factory _Bet.fromJson(Map<String, dynamic> json) = _$BetImpl.fromJson;

  @override

  /// The Bet identifier.
  dynamic get id;
  @override

  /// Current status of this bet.
  BetStatus get status;
  @override

  /// Definition of this bet.
  BetDefinition? get definition;
  @override

  /// Number of participants to this bet. This value is computed from the list
  /// of bet participation.
  int get numberOfParticipants;
  @override

  /// Total value of the bet prize. This value is computed from the list of bet
  /// participation.
  double get totalPrize;
  @override

  /// Result of the bet - string for choice.
  String get finalChoice;
  @override

  /// Result of the bet - numberic value.
  String get finalAnswer;
  @override

  /// Number of winners for this bet. This value is computed from the bet final
  /// result.
  int get numberOfWinners;
  @override
  @JsonKey(ignore: true)
  _$$BetImplCopyWith<_$BetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
