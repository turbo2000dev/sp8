import 'package:flutter/material.dart';
import 'package:sp8/features/main/data/navigation_items.dart';
import 'package:sp8/features/main/presentation/main_screen/bottom_drawer.dart';
import 'package:sp8/features/main/presentation/main_screen/main_navigation_bar.dart';

class MainScreen extends StatefulWidget {
  final int currentIndex;

  const MainScreen({super.key, required this.currentIndex});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.currentIndex;
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void onButtonTapped() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return const SizedBox(
          height: 250,
          child: BottomDrawer(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(navigationItems[selectedIndex].pageTitle),
      ),
      body: navigationItems[selectedIndex].pageWidget,
      floatingActionButton: selectedIndex < 2
          ? FloatingActionButton(
              onPressed: onButtonTapped,
              child: const Icon(Icons.add),
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      bottomNavigationBar: MainNavigationBar(
        currentIndex: selectedIndex,
        onItemTapped: onItemTapped,
        navItems: navigationItems,
      ),
    );
  }
}
