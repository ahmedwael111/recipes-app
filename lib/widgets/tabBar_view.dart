import 'package:flutter/material.dart';

class CoustomTabbarView extends StatelessWidget {
  const CoustomTabbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 500, // Set an appropriate height for the content
      child: TabBarView(
        children: [
          // Information tab content
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Servings',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text('4', style: TextStyle(fontSize: 16))
                        ],
                      ),
                      Column(
                        children: [
                          Text('prep time',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                          Text(
                            '30 min',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text('cook time',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                          Text('30 min', style: TextStyle(fontSize: 16))
                        ],
                      ),
                      Column(
                        children: [
                          Text('calories',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                          Text('300', style: TextStyle(fontSize: 16))
                        ],
                      ),
                    ],
                  ),
                  Text(
                      ' Egypt (Arabic: مصر Miṣr [mesˁr], Egyptian Arabic pronunciation: [sˤr]), officially the Arab Republic of Egypt, is a transcontinental country spanning the northeast corner of Africa and the Sinai Peninsula in the southwest corner of Asia. It is bordered by the Mediterranean Sea to the north, the Gaza Strip of Palestine and Israel to the northeast, the Red Sea to the east, Sudan to the south, and Libya to the west. The Gulf of Aqaba in the northeast separates Egypt from Jordan and Saudi Arabia. Cairo is the capital and largest city of Egypt, while Alexandria, the second-largest city, is an important industrial and tourist hub at the Mediterranean coast.[20] At approximately 100 million inhabitants, Egypt is the 14th-most populated country in the world, and the third-most populated in Africa.Egypt has one of the longest histories of any country, tracing its heritage along the Nile Delta back to the 6th–4th millennia BCE. Considered a cradle of civilisation, Ancient Egypt saw some of the earliest developments of writing, agriculture, urbanisation, organised religion and central government.[21] Egypt was an early and important centre of Christianity, later adopting Islam from the seventh century onwards. Cairo became the capital of the Fatimid Caliphate in the tenth century, and of the Mamluk Sultanate in the 13th century. Egypt then became part of the Ottoman Empire in 1517, before its local ruler Muhammad Ali established modern Egypt as an autonomous Khedivate in 1867.The country was then occupied by the British Empire and gained independence in 1922 as a monarchy. Following the 1952 revolution, Egypt declared itself a republic. For a brief period between 1958 and 1961 Egypt merged with Syria to form the United Arab Republic. Egypt fought several armed conflicts with Israel in 1948, 1956, 1967 and 1973, and occupied the Gaza Strip intermittently until 1967. In 1978, Egypt signed the Camp David Accords, which recognised Israel in exchange for its withdrawal from the occupied Sinai. After the Arab Spring, which led to the 2011 Egyptian revolution and overthrow of Hosni Mubarak, the country faced a protracted period of political unrest; this included the election in 2012 of a brief, short-lived Muslim Brotherhood-aligned Islamist government spearheaded by Mohamed Morsi, and its subsequent overthrow after mass protests in 2013.Egypts current government, a semi-presidential republic led by president Abdel Fattah el-Sisi since he was elected in 2014, has been described by a number of watchdogs as authoritarian and responsible for perpetuating the countrys poor human rights record. Islam is the official religion of Egypt, and Arabic is its official language.[1] The great majority of its people live near the banks of the Nile River, an area of about 40,000 square kilometres (15,000 sq mi), where the only arable land is found. The large regions of the Sahara desert, which constitute most of Egypts territory, are sparsely inhabited. About 43% of Egypts residents live across the countryrban areas,[22] with most spread across the densely populated centres of greater Cairo, Alexandria and other major cities in the Nile Delta. Egypt is considered to be a regional power in North Africa, the Middle East and the Muslim world, and a middle power worldwide.[23] It is a developing country having a diversified economy, which is the largest in Africa, the 38th-largest economy by nominal GDP and 127th by nominal GDP per capita.[24] Egypt is a founding member of the United Nations, the Non-Aligned Movement, the Arab League, the African Union, Organisation of Islamic Cooperation, World Youth Forum, and a member of')
                ],
              ),
            ),
          ),
          // Ingredients tab content
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Here are the ingredients of the meal.'),
          ),
          // Instructions tab content
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Here are the instructions to cook the meal.'),
          ),
        ],
      ),
    );
  }
}
