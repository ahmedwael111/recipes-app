 import 'package:flutter/material.dart';
import 'package:recipes_app/constants.dart';

AppBar homeAppBar() {
    return AppBar(
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Recipe',
            style: TextStyle(
                color: kcolor, fontWeight: FontWeight.bold, fontSize: 26),
          ),
          Text(
            'App',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
