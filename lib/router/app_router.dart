import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:sp8/features/authentication/data/auth_repository.dart';
import 'package:sp8/features/authentication/presentation/forgot_password_screen/email_sent_screen.dart';
import 'package:sp8/features/authentication/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:sp8/features/authentication/presentation/sign_in/sign_in_screen.dart';
import 'package:sp8/features/bet/presentation/bet_list_page/bet_form.dart';
import 'package:sp8/features/bet/presentation/bet_list_page/bet_list_page.dart';
import 'package:sp8/features/main/presentation/main_screen/main_screen.dart';
import 'package:sp8/localization/string_hardcoded.dart';
import 'package:sp8/router/go_router_refresh_stream.dart';
import 'package:sp8/router/not_found_screen.dart';

part 'app_router.g.dart';

enum AppRoute {
  home,
  bets,
  betDefinition,
  signIn,
  profile,
  forgotPassword,
  resetPassword,
  emailSent,
}

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);

  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    // * redirect logic based on the authentication state
    redirect: (context, state) async {
      final user = authRepository.currentUser;
      final isLoggedIn = user != null;
      final path = state.uri.toString();
      if (isLoggedIn) {
        if (path == '/signIn') {
          return '/';
        }
      } else {
        if (path == '/' || path == '/account' || path == '/profile') {
          return '/signIn';
        }
      }
      return null;
    },
    refreshListenable: GoRouterRefreshStream(authRepository.authStateChanges()),
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        name: AppRoute.home.name,
        builder: (context, state) => const MainScreen(currentIndex: 0),
        routes: <RouteBase>[
          GoRoute(
            path: 'bets',
            name: AppRoute.bets.name,
            builder: (context, state) => const BetListPage(),
          ),
          GoRoute(
            path: 'profile',
            name: AppRoute.profile.name,
            builder: (context, state) => const MainScreen(currentIndex: 2),
          ),
          GoRoute(
            path: 'betdefinition/:id'.hardcoded,
            name: AppRoute.betDefinition.name,
            builder: (context, state) {
              final id = state.pathParameters['id']!;
              return BetForm(betId: id);
            },
          ),
        ],
      ),
      GoRoute(
        path: '/signIn',
        name: AppRoute.signIn.name,
        pageBuilder: (context, state) => const MaterialPage(
          fullscreenDialog: true,
          child: SignInScreen(),
        ),
      ),
      GoRoute(
        path: '/forgot',
        name: AppRoute.forgotPassword.name,
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        path: '/sent',
        name: AppRoute.emailSent.name,
        builder: (context, state) => const EmailSentScreen(),
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
}
