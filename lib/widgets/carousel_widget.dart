import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatelessWidget {
  final List<String> imageUrls = const [
    'https://plus.unsplash.com/premium_photo-1664640733617-56652d5a5cee?q=80&w=1868&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Breakfast image
    'https://images.unsplash.com/photo-1432139555190-58524dae6a55?q=80&w=1776&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Lunch image
    'https://images.unsplash.com/photo-1487790343276-2fe56a7d9439?q=80&w=2067&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Dinner image
    'https://images.unsplash.com/photo-1470549813517-2fa741d25c92?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Snacks image
    'https://media.istockphoto.com/id/1468860049/photo/fitness-woman-eating-a-healthy-poke-bowl-in-the-kitchen-at-home.webp?a=1&b=1&s=612x612&w=0&k=20&c=FQFGxzgKu78lGZP8_4Kvuz3rJqrsE4Q61qXeMuIMcxw=', // Dessert image
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
        initialPage: 0,
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
                child: Image.network(
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
