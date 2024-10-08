import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  const Indicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
      color: Colors.amber,
      backgroundColor: Colors.red,
      strokeWidth: 7,
      strokeAlign: 3,
    ));
  }
}
