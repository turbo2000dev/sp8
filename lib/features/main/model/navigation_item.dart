import 'package:flutter/material.dart';

class NavigationItem {
  final Icon icon;
  final String label;
  final Widget page;
  final String title;

  NavigationItem({
    required this.icon,
    required this.label,
    required this.page,
    required this.title,
  });

  Widget get pageWidget => page;
  String get pageTitle => title;
}
