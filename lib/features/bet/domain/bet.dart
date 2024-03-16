import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sp8/features/bet/domain/bet_definition.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
part 'bet.freezed.dart';
part 'bet.g.dart';

//. The type definition for a Bet ID.
typedef BetID = String;

enum BetStatus {
  /// Bet has not beed finally defined and published for betting.
  draft,

  /// Bet has been published and his taking participants' bets.
  open,

  /// Bet no longer accepts new bets or changes.
  closed,

  /// The final result of the bet is now known.
  completed,
}

@freezed
class Bet with _$Bet {
  factory Bet({
    /// The Bet identifier.
    @Default("") id,

    /// Current status of this bet.
    required BetStatus status,

    /// Definition of this bet.
    required BetDefinition? definition,

    /// Number of participants to this bet. This value is computed from the list
    /// of bet participation.
    @Default(0) int numberOfParticipants,

    /// Total value of the bet prize. This value is computed from the list of bet
    /// participation.
    @Default(0.0) double totalPrize,

    /// Result of the bet - string for choice.
    @Default("") String finalChoice,

    /// Result of the bet - numberic value.
    @Default("") String finalAnswer,

    /// Number of winners for this bet. This value is computed from the bet final
    /// result.
    @Default(0) int numberOfWinners,
  }) = _Bet;

  factory Bet.fromJson(Map<String, dynamic> json) => _$BetFromJson(json);
}
