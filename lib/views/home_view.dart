import 'package:flutter/material.dart';
import 'package:recipes_app/views/search_view.dart';
import 'package:recipes_app/widgets/Home_Appbar.dart';
import 'package:recipes_app/widgets/costom_BottomNavigationBar.dart';
import 'package:recipes_app/widgets/home_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static String id = 'HomeView';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  // List of views (screens) corresponding to each tab in the BottomNavigationBar
  final List<Widget> _views = [
    const HomeWidget(),
     SearchView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: _views[_selectedIndex],
      bottomNavigationBar: CostomBottomNavigationBar(
        onItemTapped: _onItemTapped,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
