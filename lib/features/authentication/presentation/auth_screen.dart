import 'package:flutter/material.dart';
import 'package:sp8/core/common_widgets/responsive_screen.dart';
import 'package:sp8/core/constants/image_files.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key, required this.screen});

  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return ResponsiveScreen(
      mobileScreen: MobileAuthScreen(screen: screen),
      tabletScreen: TabletAuthScreen(screen: screen),
      desktopScreen: DesktopAuthScreen(screen: screen),
    );
  }
}

class MobileAuthScreen extends StatelessWidget {
  const MobileAuthScreen({super.key, required this.screen});

  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: screen,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TabletAuthScreen extends StatelessWidget {
  const TabletAuthScreen({super.key, required this.screen});

  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset(
                  ImageFiles.superBetBackground,
                  height: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: screen,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DesktopAuthScreen extends StatelessWidget {
  const DesktopAuthScreen({super.key, required this.screen});

  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(60.0),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Image.asset(
                          ImageFiles.superBetBackground,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: SingleChildScrollView(
                    child: screen,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
