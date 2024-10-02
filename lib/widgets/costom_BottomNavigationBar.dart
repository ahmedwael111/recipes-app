import 'package:flutter/material.dart';
import 'package:recipes_app/constants.dart';

class CostomBottomNavigationBar extends StatelessWidget {
  const CostomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        elevation: 44,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 24,
              color: kcolor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 24,
              color: kcolor,
            ),
            label: 'Search',
          )
        ]);
  }
}
