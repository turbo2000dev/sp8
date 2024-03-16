import 'package:flutter/material.dart';
import 'package:sp8/core/constants/breakpoints.dart';

/// Returns the proper screen based on screen size and breakpoints.
class ResponsiveScreen extends StatelessWidget {
  final Widget mobileScreen;
  final Widget tabletScreen;
  final Widget desktopScreen;

  const ResponsiveScreen({
    super.key,
    required this.mobileScreen,
    required this.tabletScreen,
    required this.desktopScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < Breakpoint.tablet) {
            return mobileScreen;
          } else if (constraints.maxWidth < Breakpoint.desktop) {
            return tabletScreen;
          } else {
            return desktopScreen;
          }
        },
      ),
    );
  }
}
