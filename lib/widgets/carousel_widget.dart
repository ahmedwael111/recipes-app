import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatelessWidget {
  final List<String> imageUrls = const [
    'assets/carousel_assets/syd-wachs-epqNIYI6S7E-unsplash.jpg', // Breakfast image
    'assets/carousel_assets/mae-mu-I7A_pHLcQK8-unsplash.jpg', // Lunch image
    'assets/carousel_assets/brooke-lark-BepcnEnnoPs-unsplash.jpg', // Dinner image
    'assets/carousel_assets/alex-munsell-Yr4n8O_3UPc-unsplash.jpg', // Snacks image
    'assets/carousel_assets/alex-munsell-auIbTAcSH6E-unsplash.jpg', // Dessert image
  ];

  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200, // Set height explicitly
        enlargeCenterPage: true, // Enlarges the center image
        autoPlay: true, // Enables autoplay
        autoPlayInterval: const Duration(seconds: 2), // Interval for autoplay
        viewportFraction: 0.9, // Adjust the visible part of next item
        aspectRatio: 16 / 9,
        initialPage: 5,
      ),
      items: imageUrls.map((imageUrl) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6.0,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
