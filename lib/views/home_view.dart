import 'package:flutter/material.dart';
import 'package:recipes_app/constants.dart';
import 'package:recipes_app/views/search_view.dart';
import 'package:recipes_app/widgets/Home_Appbar.dart';
import 'package:recipes_app/widgets/c_text_field.dart';
import 'package:recipes_app/widgets/carousel_widget.dart';
import 'package:recipes_app/widgets/costom_BottomNavigationBar.dart';
import 'package:recipes_app/widgets/coutom_HeadOfCategoriewList.dart';
import 'package:recipes_app/widgets/list_view_ofCard.dart';
import 'package:recipes_app/widgets/second_list_view_ofCard.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CostomTextfield(),
          SizedBox(
            height: 5,
          ),
          SizedBox(height: 200, child: Carousel()),
          SizedBox(
            height: 20,
          ),
          CoutomHeadOfCategoriewList(
            mainText: 'Main Categories',
          ),
          Categoryslistview(),
          SizedBox(
            height: 20,
          ),
          CoutomHeadOfCategoriewList(
            mainText: 'Other Fames Dishs',
          ),
          SecondCategoryslistview(),
        ],
      ),
      bottomNavigationBar: const CostomBottomNavigationBar(),
    );
  }
}
