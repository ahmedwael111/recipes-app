import 'package:flutter/material.dart';
import 'package:recipes_app/constants.dart';
import 'package:recipes_app/widgets/tabBar_view.dart';

class OneMealView extends StatelessWidget {
  const OneMealView({super.key});
  static String id = 'oneMealView';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: ListView(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Image.network(
                    'https://media.istockphoto.com/id/1222851180/photo/french-breakfast.jpg?s=2048x2048&w=is&k=20&c=Pqu70LY-SZFgbDgKScyrgB4FgR9LJKsn_iagm6ZF-_Q=',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: Row(
                children: [
                  Text(
                    'Lhe name of meal',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      // color: Colors.white
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Icon(
                    Icons.favorite_sharp,
                    size: 33,
                    // color: Colors.white,
                  )
                ],
              ),
            ),
            const Divider(),
            const TabBar(
                // controller: ,
                indicatorColor: kcolor,
                indicatorWeight: 5,
                labelColor: kcolor,
                labelStyle:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    text: 'Information',
                    height: 33,
                  ),
                  Tab(
                    text: 'Ingradiants',
                  ),
                  Tab(
                    text: 'Instractions',
                  )
                ]),
            // TabBarView wrapped in a fixed height container to display content
            const CoustomTabbarView(),
          ],
        ),
      ),
    );
  }
}
