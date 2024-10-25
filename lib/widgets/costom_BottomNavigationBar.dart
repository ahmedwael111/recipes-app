import 'package:flutter/material.dart';
import 'package:recipes_app/constants.dart';
import 'package:recipes_app/views/search_view.dart';

class CostomBottomNavigationBar extends StatelessWidget {
  const CostomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        elevation: 0,
        onTap: (value) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SearchView()),
          );
        },
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
            backgroundColor: kcolor,
            icon: Icon(
              Icons.search,
              size: 24,
              // color: kcolor,
            ),
            label: 'Search',
          )
        ]);
  }
}
