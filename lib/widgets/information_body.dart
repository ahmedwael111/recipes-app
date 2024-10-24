import 'package:flutter/material.dart';
import 'package:recipes_app/models/one_mealModel.dart';
import 'package:url_launcher/url_launcher.dart';

class InformationBody extends StatelessWidget {
  const InformationBody({super.key, required this.oneMealModel});
  final OneMealModel oneMealModel;

  //  final String url = 'https://flutter.dev'; // The URL to open when clicked

  // Function to open the link
  void _launchURL(BuildContext context) async {
    final Uri uri = Uri.parse(
        oneMealModel.sourceUrl); // Convert the String URL to a Uri object
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not launch $uri')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  const Text(
                    'Servings',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(oneMealModel.servings.toString(),
                      style: const TextStyle(fontSize: 16))
                ],
              ),
              Column(
                children: [
                  const Text('Total time',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text(
                    '${oneMealModel.readyInMinutes.toString()} min',
                    style: const TextStyle(fontSize: 16),
                  )
                ],
              ),
            ],
          ),
          const Divider(),
          const Text(
            'The Nutrition',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 2.0,
                crossAxisCount: 3, // Number of columns
                crossAxisSpacing: 0, // Horizontal space between items
                mainAxisSpacing: 0,
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Column(
                    children: [
                      const Text('Calories',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Text(
                        '${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Calories').amount}  ${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Calories').unit}',
                        style: const TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Column(
                    children: [
                      const Text('Carbohydrates',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Text(
                        '${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Carbohydrates').amount} ${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Carbohydrates').unit}',
                        style: const TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Column(
                    children: [
                      const Text('Fat',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Text(
                        '${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Fat').amount} ${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Fat').unit}',
                        style: const TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Column(
                    children: [
                      const Text('Protein',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Text(
                        '${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Protein').amount} ${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Protein').unit}',
                        style: const TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Column(
                    children: [
                      const Text('Fiber',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Text(
                        '${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Fiber').amount} ${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Fiber').unit}',
                        style: const TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Column(
                    children: [
                      const Text('Sugar',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Text(
                        '${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Sugar').amount} ${oneMealModel.nutrients.firstWhere((nutrient) => nutrient.name == 'Sugar').unit}',
                        style: const TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () =>
                _launchURL(context), // Handle tap event to launch the URL
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: const BoxDecoration(
                // color: Colors.white,
                shape: BoxShape.rectangle, // Shape of the container (circle)
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey.withOpacity(0.5),
                //     spreadRadius: 5,
                //     blurRadius: 7,
                //     offset: const Offset(0, 3),
                //   ),
                // ],
              ),
              child: Center(
                child: Text(
                  oneMealModel.sourceUrl,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
