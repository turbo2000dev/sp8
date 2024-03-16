// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bet_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BetDefinition _$BetDefinitionFromJson(Map<String, dynamic> json) {
  return _BetDefinition.fromJson(json);
}

/// @nodoc
mixin _$BetDefinition {
  String get id => throw _privateConstructorUsedError;

  /// Short description. For example, when displaying bet choices in a tabular
  /// format.
  String get name => throw _privateConstructorUsedError;

  /// Long description. For example, when asking the user for its choices.
  String get description => throw _privateConstructorUsedError;

  /// Extra instructions provided to the user when asked for its choices.
  String get notes => throw _privateConstructorUsedError;

  /// The value of the bet.
  double get amount => throw _privateConstructorUsedError;

  /// The type of bet. Will determine the rules and how the winner will be
  /// identified.
  @JsonKey(name: 'bet_type')
  BetType get betType => throw _privateConstructorUsedError;

  /// The possible choices for the bet. Applicable only when [betType] is
  /// * [BetType.multipleChoices]
  /// * [BetType.closestUnderWithChoices]
  /// * [BetType.closestOverWithChoices]
  /// * [BetType.closestWithChoices]
  List<String>? get choices => throw _privateConstructorUsedError;

  /// The abbreviations for the possible choices for the bet. Typically used
  /// when displaying bet choices in a tabular format. The order of items must
  /// match the of items in [choices]. Applicable only when [betType] is
  /// * [BetType.multipleChoices]
  /// * [BetType.closestUnderWithChoices]
  /// * [BetType.closestOverWithChoices]
  /// * [BetType.closestWithChoices]
  @JsonKey(name: 'choices_abbreviation')
  List<String>? get choicesAbbreviation => throw _privateConstructorUsedError;

  /// The units to be used when [betType] is
  /// * [BetType.closestUnder]
  /// * [BetType.closestOver]
  /// * [BetType.closest]
  /// * [BetType.closestUnderWithChoices]
  /// * [BetType.closestOverWithChoices]
  /// * [BetType.closestWithChoices]
  @JsonKey(name: 'unit_type')
  UnitType? get unitType => throw _privateConstructorUsedError;

  /// Whether the bet is mandatory, i.e., if participants must participate or
  /// they can skip.
  bool get mandatory => throw _privateConstructorUsedError;

  /// Whether the bet allows multiple participants to bet on the same choice.
  @JsonKey(name: 'duplicates_allowed')
  bool get duplicatesAllowed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BetDefinitionCopyWith<BetDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BetDefinitionCopyWith<$Res> {
  factory $BetDefinitionCopyWith(
          BetDefinition value, $Res Function(BetDefinition) then) =
      _$BetDefinitionCopyWithImpl<$Res, BetDefinition>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String notes,
      double amount,
      @JsonKey(name: 'bet_type') BetType betType,
      List<String>? choices,
      @JsonKey(name: 'choices_abbreviation') List<String>? choicesAbbreviation,
      @JsonKey(name: 'unit_type') UnitType? unitType,
      bool mandatory,
      @JsonKey(name: 'duplicates_allowed') bool duplicatesAllowed});
}

/// @nodoc
class _$BetDefinitionCopyWithImpl<$Res, $Val extends BetDefinition>
    implements $BetDefinitionCopyWith<$Res> {
  _$BetDefinitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? notes = null,
    Object? amount = null,
    Object? betType = null,
    Object? choices = freezed,
    Object? choicesAbbreviation = freezed,
    Object? unitType = freezed,
    Object? mandatory = null,
    Object? duplicatesAllowed = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      betType: null == betType
          ? _value.betType
          : betType // ignore: cast_nullable_to_non_nullable
              as BetType,
      choices: freezed == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      choicesAbbreviation: freezed == choicesAbbreviation
          ? _value.choicesAbbreviation
          : choicesAbbreviation // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      unitType: freezed == unitType
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as UnitType?,
      mandatory: null == mandatory
          ? _value.mandatory
          : mandatory // ignore: cast_nullable_to_non_nullable
              as bool,
      duplicatesAllowed: null == duplicatesAllowed
          ? _value.duplicatesAllowed
          : duplicatesAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BetDefinitionImplCopyWith<$Res>
    implements $BetDefinitionCopyWith<$Res> {
  factory _$$BetDefinitionImplCopyWith(
          _$BetDefinitionImpl value, $Res Function(_$BetDefinitionImpl) then) =
      __$$BetDefinitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String notes,
      double amount,
      @JsonKey(name: 'bet_type') BetType betType,
      List<String>? choices,
      @JsonKey(name: 'choices_abbreviation') List<String>? choicesAbbreviation,
      @JsonKey(name: 'unit_type') UnitType? unitType,
      bool mandatory,
      @JsonKey(name: 'duplicates_allowed') bool duplicatesAllowed});
}

/// @nodoc
class __$$BetDefinitionImplCopyWithImpl<$Res>
    extends _$BetDefinitionCopyWithImpl<$Res, _$BetDefinitionImpl>
    implements _$$BetDefinitionImplCopyWith<$Res> {
  __$$BetDefinitionImplCopyWithImpl(
      _$BetDefinitionImpl _value, $Res Function(_$BetDefinitionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? notes = null,
    Object? amount = null,
    Object? betType = null,
    Object? choices = freezed,
    Object? choicesAbbreviation = freezed,
    Object? unitType = freezed,
    Object? mandatory = null,
    Object? duplicatesAllowed = null,
  }) {
    return _then(_$BetDefinitionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      betType: null == betType
          ? _value.betType
          : betType // ignore: cast_nullable_to_non_nullable
              as BetType,
      choices: freezed == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      choicesAbbreviation: freezed == choicesAbbreviation
          ? _value._choicesAbbreviation
          : choicesAbbreviation // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      unitType: freezed == unitType
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as UnitType?,
      mandatory: null == mandatory
          ? _value.mandatory
          : mandatory // ignore: cast_nullable_to_non_nullable
              as bool,
      duplicatesAllowed: null == duplicatesAllowed
          ? _value.duplicatesAllowed
          : duplicatesAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BetDefinitionImpl implements _BetDefinition {
  _$BetDefinitionImpl(
      {required this.id,
      required this.name,
      this.description = '',
      this.notes = '',
      this.amount = 0.0,
      @JsonKey(name: 'bet_type') this.betType = BetType.closestUnder,
      final List<String>? choices,
      @JsonKey(name: 'choices_abbreviation')
      final List<String>? choicesAbbreviation,
      @JsonKey(name: 'unit_type') this.unitType,
      this.mandatory = false,
      @JsonKey(name: 'duplicates_allowed') this.duplicatesAllowed = false})
      : _choices = choices,
        _choicesAbbreviation = choicesAbbreviation;

  factory _$BetDefinitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$BetDefinitionImplFromJson(json);

  @override
  final String id;

  /// Short description. For example, when displaying bet choices in a tabular
  /// format.
  @override
  final String name;

  /// Long description. For example, when asking the user for its choices.
  @override
  @JsonKey()
  final String description;

  /// Extra instructions provided to the user when asked for its choices.
  @override
  @JsonKey()
  final String notes;

  /// The value of the bet.
  @override
  @JsonKey()
  final double amount;

  /// The type of bet. Will determine the rules and how the winner will be
  /// identified.
  @override
  @JsonKey(name: 'bet_type')
  final BetType betType;

  /// The possible choices for the bet. Applicable only when [betType] is
  /// * [BetType.multipleChoices]
  /// * [BetType.closestUnderWithChoices]
  /// * [BetType.closestOverWithChoices]
  /// * [BetType.closestWithChoices]
  final List<String>? _choices;

  /// The possible choices for the bet. Applicable only when [betType] is
  /// * [BetType.multipleChoices]
  /// * [BetType.closestUnderWithChoices]
  /// * [BetType.closestOverWithChoices]
  /// * [BetType.closestWithChoices]
  @override
  List<String>? get choices {
    final value = _choices;
    if (value == null) return null;
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// The abbreviations for the possible choices for the bet. Typically used
  /// when displaying bet choices in a tabular format. The order of items must
  /// match the of items in [choices]. Applicable only when [betType] is
  /// * [BetType.multipleChoices]
  /// * [BetType.closestUnderWithChoices]
  /// * [BetType.closestOverWithChoices]
  /// * [BetType.closestWithChoices]
  final List<String>? _choicesAbbreviation;

  /// The abbreviations for the possible choices for the bet. Typically used
  /// when displaying bet choices in a tabular format. The order of items must
  /// match the of items in [choices]. Applicable only when [betType] is
  /// * [BetType.multipleChoices]
  /// * [BetType.closestUnderWithChoices]
  /// * [BetType.closestOverWithChoices]
  /// * [BetType.closestWithChoices]
  @override
  @JsonKey(name: 'choices_abbreviation')
  List<String>? get choicesAbbreviation {
    final value = _choicesAbbreviation;
    if (value == null) return null;
    if (_choicesAbbreviation is EqualUnmodifiableListView)
      return _choicesAbbreviation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// The units to be used when [betType] is
  /// * [BetType.closestUnder]
  /// * [BetType.closestOver]
  /// * [BetType.closest]
  /// * [BetType.closestUnderWithChoices]
  /// * [BetType.closestOverWithChoices]
  /// * [BetType.closestWithChoices]
  @override
  @JsonKey(name: 'unit_type')
  final UnitType? unitType;

  /// Whether the bet is mandatory, i.e., if participants must participate or
  /// they can skip.
  @override
  @JsonKey()
  final bool mandatory;

  /// Whether the bet allows multiple participants to bet on the same choice.
  @override
  @JsonKey(name: 'duplicates_allowed')
  final bool duplicatesAllowed;

  @override
  String toString() {
    return 'BetDefinition(id: $id, name: $name, description: $description, notes: $notes, amount: $amount, betType: $betType, choices: $choices, choicesAbbreviation: $choicesAbbreviation, unitType: $unitType, mandatory: $mandatory, duplicatesAllowed: $duplicatesAllowed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BetDefinitionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.betType, betType) || other.betType == betType) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            const DeepCollectionEquality()
                .equals(other._choicesAbbreviation, _choicesAbbreviation) &&
            (identical(other.unitType, unitType) ||
                other.unitType == unitType) &&
            (identical(other.mandatory, mandatory) ||
                other.mandatory == mandatory) &&
            (identical(other.duplicatesAllowed, duplicatesAllowed) ||
                other.duplicatesAllowed == duplicatesAllowed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      notes,
      amount,
      betType,
      const DeepCollectionEquality().hash(_choices),
      const DeepCollectionEquality().hash(_choicesAbbreviation),
      unitType,
      mandatory,
      duplicatesAllowed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BetDefinitionImplCopyWith<_$BetDefinitionImpl> get copyWith =>
      __$$BetDefinitionImplCopyWithImpl<_$BetDefinitionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BetDefinitionImplToJson(
      this,
    );
  }
}

abstract class _BetDefinition implements BetDefinition {
  factory _BetDefinition(
          {required final String id,
          required final String name,
          final String description,
          final String notes,
          final double amount,
          @JsonKey(name: 'bet_type') final BetType betType,
          final List<String>? choices,
          @JsonKey(name: 'choices_abbreviation')
          final List<String>? choicesAbbreviation,
          @JsonKey(name: 'unit_type') final UnitType? unitType,
          final bool mandatory,
          @JsonKey(name: 'duplicates_allowed') final bool duplicatesAllowed}) =
      _$BetDefinitionImpl;

  factory _BetDefinition.fromJson(Map<String, dynamic> json) =
      _$BetDefinitionImpl.fromJson;

  @override
  String get id;
  @override

  /// Short description. For example, when displaying bet choices in a tabular
  /// format.
  String get name;
  @override

  /// Long description. For example, when asking the user for its choices.
  String get description;
  @override

  /// Extra instructions provided to the user when asked for its choices.
  String get notes;
  @override

  /// The value of the bet.
  double get amount;
  @override

  /// The type of bet. Will determine the rules and how the winner will be
  /// identified.
  @JsonKey(name: 'bet_type')
  BetType get betType;
  @override

  /// The possible choices for the bet. Applicable only when [betType] is
  /// * [BetType.multipleChoices]
  /// * [BetType.closestUnderWithChoices]
  /// * [BetType.closestOverWithChoices]
  /// * [BetType.closestWithChoices]
  List<String>? get choices;
  @override

  /// The abbreviations for the possible choices for the bet. Typically used
  /// when displaying bet choices in a tabular format. The order of items must
  /// match the of items in [choices]. Applicable only when [betType] is
  /// * [BetType.multipleChoices]
  /// * [BetType.closestUnderWithChoices]
  /// * [BetType.closestOverWithChoices]
  /// * [BetType.closestWithChoices]
  @JsonKey(name: 'choices_abbreviation')
  List<String>? get choicesAbbreviation;
  @override

  /// The units to be used when [betType] is
  /// * [BetType.closestUnder]
  /// * [BetType.closestOver]
  /// * [BetType.closest]
  /// * [BetType.closestUnderWithChoices]
  /// * [BetType.closestOverWithChoices]
  /// * [BetType.closestWithChoices]
  @JsonKey(name: 'unit_type')
  UnitType? get unitType;
  @override

  /// Whether the bet is mandatory, i.e., if participants must participate or
  /// they can skip.
  bool get mandatory;
  @override

  /// Whether the bet allows multiple participants to bet on the same choice.
  @JsonKey(name: 'duplicates_allowed')
  bool get duplicatesAllowed;
  @override
  @JsonKey(ignore: true)
  _$$BetDefinitionImplCopyWith<_$BetDefinitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
