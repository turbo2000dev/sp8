import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sp8/core/constants/app_sizes.dart';
import 'package:sp8/features/bet/domain/bet_definition.dart';
import 'package:sp8/localization/string_hardcoded.dart';
import 'package:sp8/router/app_router.dart';

class BetCard extends StatelessWidget {
  const BetCard({super.key, required this.betDefinition, this.onPressed});
  final BetDefinition betDefinition;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          context.goNamed(
            AppRoute.betDefinition.name,
            pathParameters: {'id': betDefinition.id},
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bet #${betDefinition.id}".hardcoded,
              ),
              Text(
                betDefinition.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              gapH4,
              Text(betDefinition.description),
              gapH4,
              if (betDefinition.notes.isNotEmpty) UserNotes(betDefinition: betDefinition),
              Text(
                  "Value: ${betDefinition.amount}\$ (${betDefinition.mandatory ? "mandatory".hardcoded : "optional".hardcoded})"
                      .hardcoded),
              gapH4,
              if (_betHasChoices(betDefinition)) UserChoices(betDefinition: betDefinition),
              if (_betHasTarget(betDefinition)) UserTarget(betDefinition: betDefinition),
            ],
          ),
        ),
      ),
    );
  }
}

bool _betHasChoices(BetDefinition betDefinition) {
  return ((betDefinition.betType == BetType.multipleChoices) ||
      (betDefinition.betType == BetType.closestWithChoices) ||
      (betDefinition.betType == BetType.closestUnderWithChoices) ||
      (betDefinition.betType == BetType.closestOverWithChoices));
}

bool _betHasTarget(BetDefinition betDefinition) {
  return ((betDefinition.betType == BetType.closest) ||
      (betDefinition.betType == BetType.closestWithChoices) ||
      (betDefinition.betType == BetType.closestOver) ||
      (betDefinition.betType == BetType.closestOverWithChoices) ||
      (betDefinition.betType == BetType.closestUnder) ||
      (betDefinition.betType == BetType.closestUnderWithChoices));
}

class UserNotes extends StatelessWidget {
  const UserNotes({
    super.key,
    required this.betDefinition,
  });

  final BetDefinition betDefinition;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(betDefinition.notes,
            style: const TextStyle(
              fontSize: 12,
            )),
        gapH4,
      ],
    );
  }
}

class UserChoices extends StatelessWidget {
  const UserChoices({
    super.key,
    required this.betDefinition,
  });

  final BetDefinition betDefinition;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("User must specify one choice among:".hardcoded),
        ListView.builder(
          shrinkWrap: true, // This is important to make the ListView work inside a Column
          physics: const NeverScrollableScrollPhysics(),
          itemCount: betDefinition.choices?.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Text("  - ${betDefinition.choices![index]}",
                    style: const TextStyle(
                      fontSize: 12,
                    )),
                if (betDefinition.choicesAbbreviation != null)
                  Text("(${betDefinition.choicesAbbreviation![index]})",
                      style: const TextStyle(
                        fontSize: 12,
                      )),
              ],
            );
          },
        ),
        gapH4,
      ],
    );
  }
}

class UserTarget extends StatelessWidget {
  const UserTarget({
    super.key,
    required this.betDefinition,
  });

  final BetDefinition betDefinition;

  @override
  Widget build(BuildContext context) {
    String unitText;
    switch (betDefinition.unitType) {
      case UnitType.integer:
        unitText = "a numeric value.".hardcoded;
        break;
      case UnitType.floating:
        unitText = "a numeric value with decimals.".hardcoded;
        break;
      case UnitType.timeMinutes:
        unitText = "a duration in minutes.".hardcoded;
        break;
      case UnitType.timeSeconds:
        unitText = "a duration in seconds.".hardcoded;
        break;
      default:
        unitText = "a value of an unknown type.".hardcoded;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("User must enter $unitText".hardcoded),
        gapH4,
      ],
    );
  }
}
