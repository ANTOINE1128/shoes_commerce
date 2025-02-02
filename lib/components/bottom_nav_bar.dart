import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  final void Function(int) onTabChange;

  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0), // Adjusted padding
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Adjusted alignment
        tabBorderRadius: 16,
        gap: 4,
        onTabChange: (value) => onTabChange(value),
        tabs: const [
          GButton(icon: Icons.home, text: 'Shop'),
          GButton(icon: Icons.shopping_bag_rounded, text: 'Cart'),
        ],
      ),
    );
  }
}
