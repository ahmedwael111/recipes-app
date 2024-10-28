import 'package:flutter/material.dart';
import 'package:recipes_app/constants.dart';
import 'package:recipes_app/views/search_view.dart';

class CostomTextfield extends StatelessWidget {
  const CostomTextfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SearchView()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: TextField(
          enabled: false, // Disable text editing
          decoration: InputDecoration(
            filled: true,
            // fillColor: Colors.orange,
            hintText: 'Search',
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 18),
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: kcolor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: kcolor),
            ),
          ),
          // style: const TextStyle(color: kcolor),
        ),
      ),
    );
  }
}
