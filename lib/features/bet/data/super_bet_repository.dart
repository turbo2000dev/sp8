import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:sp8/core/utils/delay.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:sp8/core/utils/delay.dart';
import 'package:sp8/features/bet/domain/super_bet.dart';

part 'super_bet_repository.g.dart';

// Future<SuperBet> FetchSuperBet(String filename);
// Stream<SuperBet> WatchSuperBet(String filename);
// Future<void> SetSuperBet (String filename, SuperBet superBet)

@Riverpod(keepAlive: true)
class SuperBetRepository extends _$SuperBetRepository {
  @override
  FutureOr<SuperBet> build() async {
    state = const AsyncLoading();
    String jsonString = await rootBundle.loadString('assets/data/bets.json');
    Map<String, dynamic> jsonData = jsonDecode(jsonString);
    await delay(true);
    return Future.value(SuperBet.fromJson(jsonData));
  }

  SuperBet? getSuperBet() {
    return state.valueOrNull;
  }

  Future<void> load() async {
    state = const AsyncLoading();
    String jsonString = await rootBundle.loadString('assets/data/bets.json');
    Map<String, dynamic> jsonData = jsonDecode(jsonString);
    await delay(true);
    state = AsyncValue.data(SuperBet.fromJson(jsonData));
  }
}
