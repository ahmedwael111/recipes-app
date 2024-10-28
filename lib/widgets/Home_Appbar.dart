// import 'package:day_night_switch/day_night_switch.dart';
// import 'package:flutter/material.dart';
// import 'package:recipes_app/constants.dart';

// AppBar homeAppBar() {
//   bool val = false;
//   return AppBar(
//     title: Row(
//       // mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         const Text(
//           'Recipe',
//           style: TextStyle(
//               color: kcolor, fontWeight: FontWeight.bold, fontSize: 26),
//         ),
//         const Text(
//           'App',
//           style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(
//           width: 133,
//         ),
//         Transform.scale(
//           scale: 0.4,
//           child: DayNightSwitch(
//             // size: const Size(120, 2),
//             value: val,
//             // moonImage: const AssetImage('assets/moon.png'),
//             // sunImage: const AssetImage('assets/sun.png'),
//             // sunColor: sunColor,
//             // moonColor: moonColor,
//             dayColor: kcolor,
//             nightColor: Colors.black,
//             onChanged: (value) {
//               setState(() {
//               val = value;
//               }
//               );
//             },
//           ),
//         )
//       ],
//     ),
//   );
// }
