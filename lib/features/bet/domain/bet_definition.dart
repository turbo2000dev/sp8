import 'package:freezed_annotation/freezed_annotation.dart';

part 'bet_definition.freezed.dart';
part 'bet_definition.g.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
/// The different types of bets possible.
enum BetType {
  /// A "Yes or No" question.
  multipleChoices,

  /// Closest to a number, without going over.
  closestUnder,

  /// Closest to a number, without going under.
  closestOver,

  /// Closest to a number.
  closest,

  /// Closest to a number, without going over but with a choice first.
  closestUnderWithChoices,

  /// Closest to a number, without going under but with a choice first.
  closestOverWithChoices,

  /// Closest to a number but with a choice first.
  closestWithChoices,
}

/// The different units possible when the bet choice is a numeric answer.
enum UnitType {
  integer,
  floating,
  timeSeconds,
  timeMinutes,
}

@freezed
class BetDefinition with _$BetDefinition {
  factory BetDefinition({
    required String id,

    /// Short description. For example, when displaying bet choices in a tabular
    /// format.
    required String name,

    /// Long description. For example, when asking the user for its choices.
    @Default('') String description,

    /// Extra instructions provided to the user when asked for its choices.
    @Default('') String notes,

    /// The value of the bet.
    @Default(0.0) double amount,

    /// The type of bet. Will determine the rules and how the winner will be
    /// identified.
    @JsonKey(name: 'bet_type') @Default(BetType.closestUnder) BetType betType,

    /// The possible choices for the bet. Applicable only when [betType] is
    /// * [BetType.multipleChoices]
    /// * [BetType.closestUnderWithChoices]
    /// * [BetType.closestOverWithChoices]
    /// * [BetType.closestWithChoices]
    List<String>? choices,

    /// The abbreviations for the possible choices for the bet. Typically used
    /// when displaying bet choices in a tabular format. The order of items must
    /// match the of items in [choices]. Applicable only when [betType] is
    /// * [BetType.multipleChoices]
    /// * [BetType.closestUnderWithChoices]
    /// * [BetType.closestOverWithChoices]
    /// * [BetType.closestWithChoices]
    @JsonKey(name: 'choices_abbreviation')
    final List<String>? choicesAbbreviation,

    /// The units to be used when [betType] is
    /// * [BetType.closestUnder]
    /// * [BetType.closestOver]
    /// * [BetType.closest]
    /// * [BetType.closestUnderWithChoices]
    /// * [BetType.closestOverWithChoices]
    /// * [BetType.closestWithChoices]

    @JsonKey(name: 'unit_type') UnitType? unitType,

    /// Whether the bet is mandatory, i.e., if participants must participate or
    /// they can skip.
    @Default(false) bool mandatory,

    /// Whether the bet allows multiple participants to bet on the same choice.
    @JsonKey(name: 'duplicates_allowed') @Default(false) bool duplicatesAllowed,
  }) = _BetDefinition;

  factory BetDefinition.fromJson(Map<String, dynamic> json) =>
      _$BetDefinitionFromJson(json);
}
