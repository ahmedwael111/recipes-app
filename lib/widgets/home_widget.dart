import 'package:flutter/material.dart';
import 'package:recipes_app/widgets/c_text_field.dart';
import 'package:recipes_app/widgets/carousel_widget.dart';
import 'package:recipes_app/widgets/coutom_HeadOfCategoriewList.dart';
import 'package:recipes_app/widgets/list_view_ofCard.dart';
import 'package:recipes_app/widgets/second_list_view_ofCard.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(height: 55, child: CostomTextfield()),
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
    );
  }
}
