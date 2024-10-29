import 'package:day_night_switch/day_night_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/constants.dart';
import 'package:recipes_app/cubits/cubit/theme_cubit_cubit.dart';
import 'package:recipes_app/views/search_view.dart';
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
  bool val = false;

  // List of views (screens) corresponding to each tab in the BottomNavigationBar
  final List<Widget> _views = [
    const HomeWidget(),
    const SearchView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Recipe',
              style: TextStyle(
                  color: kcolor, fontWeight: FontWeight.bold, fontSize: 26),
            ),
            const Text(
              'App',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const Spacer(
              flex: 1,
            ),
            Transform.scale(
              scale: 0.4,
              child: DayNightSwitch(
                // size: const Size(120, 2),
                value: val,
                // moonImage: const AssetImage('assets/moon.png'),
                // sunImage: const AssetImage('assets/sun.png'),
                // sunColor: sunColor,
                // moonColor: moonColor,
                dayColor: kcolor,
                nightColor: Colors.black,
                onChanged: (value) {
                  setState(() {
                    BlocProvider.of<ThemeCubitCubit>(context).toggleTheme();
                    val = value;
                  });
                },
              ),
            )
          ],
        ),
      ),
      body: _views[_selectedIndex],
      bottomNavigationBar: CostomBottomNavigationBar(
        onItemTapped: _onItemTapped,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
