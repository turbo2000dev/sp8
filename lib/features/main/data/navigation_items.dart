import 'package:flutter/material.dart';
import 'package:sp8/core/common_widgets/theme_color_viewer.dart';
import 'package:sp8/features/authentication/presentation/account_page/account_page.dart';
import 'package:sp8/features/bet/presentation/bet_list_page/bet_list_page.dart';
import 'package:sp8/features/main/model/navigation_item.dart';
import 'package:sp8/features/main/presentation/home_page/home_page.dart';
import 'package:sp8/localization/string_hardcoded.dart';

final List<NavigationItem> navigationItems = [
  NavigationItem(
    icon: const Icon(Icons.home),
    label: 'Home'.hardcoded,
    page: const HomePage(),
    title: "SuperPari des Copains".hardcoded,
  ),
  NavigationItem(
    icon: const Icon(Icons.bolt),
    label: 'Open Bets'.hardcoded,
    page: const ThemeColorViewer(),
    title: "Open Bets".hardcoded,
  ),
  NavigationItem(
    icon: const Icon(Icons.emoji_events),
    label: 'History'.hardcoded,
    page: const BetListPage(),
    title: "History".hardcoded,
  ),
  NavigationItem(
    icon: const Icon(Icons.person),
    label: 'Account'.hardcoded,
    page: const AccountPage(),
    title: "Account".hardcoded,
  ),
];
