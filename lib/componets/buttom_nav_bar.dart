import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ButtomNavBar extends StatelessWidget {
  Function(int)? onTabChange;
  ButtomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
        backgroundColor: Colors.black,
        color: Colors.white,
        activeColor: Colors.orange,
        iconSize: 30,
        onTabChange: onTabChange,
        tabs: const [
          GButton(
            icon: Icons.home_outlined,
          ),
          GButton(icon: Icons.favorite_border),
          GButton(icon: Icons.notifications_none),
          GButton(icon: Icons.shopping_cart),
        ]);
  }
}
