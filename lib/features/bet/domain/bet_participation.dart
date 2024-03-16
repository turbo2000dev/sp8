import 'package:freezed_annotation/freezed_annotation.dart';

part 'bet_participation.freezed.dart';
part 'bet_participation.g.dart';

@freezed
class BetParticipation with _$BetParticipation {
  factory BetParticipation({
    /// Id of the participant.
    required String participantId,

    /// Id of the bet.
    required String betId,

    /// Whether the participant participated to this bet.
    required bool isParticipating,

    /// Participant's choice for this bet.
    required String choice,

    /// Participant's answer for this bet.
    required String answer,
  }) = _BetParticipation;

  factory BetParticipation.fromJson(Map<String, dynamic> json) =>
      _$BetParticipationFromJson(json);
}
