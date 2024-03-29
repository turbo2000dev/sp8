import 'package:flutter/material.dart';
import 'package:sp8/core/common_widgets/responsive_center.dart';
import 'package:sp8/core/constants/app_sizes.dart';
import 'package:sp8/core/constants/breakpoints.dart';

/// Scrollable widget that shows a responsive card with a given child widget.
/// Useful for displaying forms and other widgets that need to be scrollable.
class ResponsiveScrollableCard extends StatelessWidget {
  const ResponsiveScrollableCard({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ResponsiveCenter(
        maxContentWidth: Breakpoint.tablet,
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.p16),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.p16),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
