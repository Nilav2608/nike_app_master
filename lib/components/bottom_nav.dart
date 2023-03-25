import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class MyBottomNavBar extends StatelessWidget {
  void Function(int)? tabChange;
  MyBottomNavBar({super.key, required this.tabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
      color: Colors.grey,
      activeColor: Colors.grey.shade700,
      tabActiveBorder: Border.all(color: Colors.white),
      tabBackgroundColor: Colors.grey.shade100,
      mainAxisAlignment: MainAxisAlignment.center,
      tabBorderRadius: 16,
      onTabChange: (value) => tabChange!(value),
      tabs: const [
        GButton(icon: Icons.home, text: "Home"),
        GButton(icon: Icons.card_travel_rounded, text: "Cart")
      ],
    );
  }
}
