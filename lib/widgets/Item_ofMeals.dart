//  Container(
//         height: 180,
//         width: 200,
//         decoration: BoxDecoration(boxShadow: [
//           BoxShadow(
//               color: Colors.grey.withOpacity(0.6),
//               spreadRadius: 0,
//               blurRadius: 10,
//               offset: const Offset(5, 10))
//         ]),
//         child: Card(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               ClipRRect(
//                   borderRadius: BorderRadius.circular(12),
//                   child: Image.network(
//                     cardModel.image,
//                     height: 123,
//                     width: double.infinity,
//                     fit: BoxFit.cover,
//                   )),
//               const SizedBox(
//                 height: 12,
//               ),
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
//                 child: Text(cardModel.name),
//               ),
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(cardModel.time),
//                     const Icon(
//                       Icons.favorite,
//                       color: Colors.red,
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),