import 'package:flutter/material.dart';
import 'package:recipes_app/constants.dart';

class CostomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CostomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: onItemTapped,
        currentIndex: selectedIndex,
        type:
            BottomNavigationBarType.fixed, // Keeps items fixed, avoids shifting
        selectedItemColor: kcolor, // Color for selected item
        unselectedItemColor: Colors.grey, // Color for unselected items
        iconSize: 28.0, // Size of icons
        selectedFontSize: 14.0,
        unselectedFontSize: 12.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          )
        ]);
  }
}
