import 'package:flutter/material.dart';
import 'package:sp8/core/constants/app_sizes.dart';
import 'package:sp8/localization/string_hardcoded.dart';

class SummaryResults extends StatelessWidget {
  const SummaryResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Summary"),
        gapH8,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text("Winnings".hardcoded),
                const Text("100\$/240\$"),
              ],
            ),
            Column(
              children: [
                Text("Bets".hardcoded),
                const Text("2w/4l"),
              ],
            ),
            Column(
              children: [
                Text("Progress".hardcoded),
                const Text("6/11"),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
