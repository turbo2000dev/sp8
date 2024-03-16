import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sp8/core/common_widgets/responsive_center.dart';
import 'package:sp8/core/utils/log_analytics_event.dart';
import 'package:sp8/features/bet/data/super_bet_repository.dart';
import 'package:sp8/features/bet/domain/bet.dart';
import 'package:sp8/features/bet/domain/bet_definition.dart';
import 'package:sp8/features/bet/presentation/bet_list_page/bet_card.dart';
import 'package:sp8/localization/string_hardcoded.dart';

class BetListPage extends ConsumerWidget {
  const BetListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final superBetValue = ref.watch(superBetRepositoryProvider);

    logAnalyticsEvent("bet_list_screen");

    return ResponsiveCenter(
      child: superBetValue.when(
        data: (superBet) {
          return superBet.bets.isNotEmpty
              ? ListView.builder(
                  itemCount: superBet.bets.length,
                  itemBuilder: (BuildContext context, int index) {
                    BetID betID = superBet.bets.keys.elementAt(index);
                    BetDefinition betDefinition = superBet.bets[betID]!.definition!;

                    return BetCard(betDefinition: betDefinition);
                  },
                )
              : Text("No bets defined.".hardcoded);
        },
        error: (e, s) => const Text("error"),
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }
}
