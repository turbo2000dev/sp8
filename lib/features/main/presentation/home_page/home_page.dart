import 'package:flutter/material.dart';
import 'package:sp8/core/common_widgets/primary_button.dart';
import 'package:sp8/core/common_widgets/responsive_center.dart';
import 'package:sp8/core/constants/app_sizes.dart';
import 'package:sp8/core/utils/log_analytics_event.dart';
import 'package:sp8/features/main/presentation/home_page/top_banner.dart';
import 'package:sp8/features/main/presentation/home_page/summary_results.dart';
import 'package:sp8/localization/string_hardcoded.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    logAnalyticsEvent("dashboard_screen");

    return ResponsiveCenter(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.p12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              gapH12,
              const TopBanner(),
              gapH12,
              const SummaryResults(),
              gapH24,
              Center(
                child: PrimaryButton(
                  text: 'Monitor Open Bet'.hardcoded,
                  onPressed: null,
                ),
              ),
              gapH24,
              Center(
                child: PrimaryButton(
                  text: 'Create New Bet'.hardcoded,
                  onPressed: null,
                ),
              ),
              gapH24,
              Center(
                child: PrimaryButton(
                  text: 'Participate in a Bet'.hardcoded,
                  onPressed: null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ActiveBets extends StatelessWidget {
  const ActiveBets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Active Bets"));
  }
}
