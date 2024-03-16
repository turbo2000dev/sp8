// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sp8/features/bet/domain/bet.dart';

part 'super_bet.freezed.dart';
part 'super_bet.g.dart';

/// Class definition for a SuperBet.
@freezed
class SuperBet with _$SuperBet {
  factory SuperBet({
    /// The name of the SuperBet.
    @Default("NoName") String name,

    /// The image for the SuperBet.
    @Default("trophy-s.jpg") String image,

    /// The list of all bets.
    @Default({}) final Map<BetID, Bet> bets,
  }) = _SuperBet;

  factory SuperBet.fromJson(Map<BetID, dynamic> json) => _$SuperBetFromJson(json);
}

extension BetItems on SuperBet {
  List<Bet> toBetsList() {
    return bets.entries.map((entry) {
      return Bet(
        id: entry.key,
        status: entry.value.status,
        definition: entry.value.definition,
        numberOfParticipants: entry.value.numberOfParticipants,
        totalPrize: entry.value.totalPrize,
        finalChoice: entry.value.finalChoice,
        finalAnswer: entry.value.finalAnswer,
        numberOfWinners: entry.value.numberOfWinners,
      );
    }).toList();
  }
}
