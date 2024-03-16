import 'package:flutter/material.dart';
import 'package:sp8/features/main/model/navigation_item.dart';

class MainNavigationBar extends StatelessWidget {
  final int currentIndex;
  final List<NavigationItem> navItems;
  final Function(int) onItemTapped;

  const MainNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onItemTapped,
    required this.navItems,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: onItemTapped,
      destinations: navItems.map((item) {
        return NavigationDestination(
          icon: item.icon,
          label: item.label,
        );
      }).toList(),
    );
  }
}
