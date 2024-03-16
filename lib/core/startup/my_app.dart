import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sp8/core/constants/theme/my_app_theme.dart';
import 'package:sp8/localization/string_hardcoded.dart';
import 'package:sp8/router/app_router.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);

    // final analytics = ref.watch(analyticsProvider);

    return MaterialApp.router(
      routerConfig: goRouter,
      debugShowCheckedModeBanner: kDebugMode,
      onGenerateTitle: (BuildContext context) => 'SuperPari des Copains'.hardcoded,
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
