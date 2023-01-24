// import 'package:flutter/material.dart';

// import '../../../theme.dart';
// import '../ProductCard.dart';

// class RekomendasiContent extends StatelessWidget {
//   const RekomendasiContent({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16),
//             child: Row(
//               children: [
//                 Text(
//                   'Rekomendasi',
//                   style: HeadingM.copyWith(
//                     color: Neutral100,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
//               child: Row(
//                 children: [
//                   ProductCard(
//                     id: 'KueKering_2',
//                     imageUrl: 'assets/images/KueKering_2.png',
//                     NamaProduk: 'Croissant Almond',
//                     HargaProduk: 26000,
//                   ),
//                   ProductCard(
//                     id: 'rekomendasi_2',
//                     imageUrl: 'assets/images/rekomendasi_2.png',
//                     NamaProduk: 'Berry Pudding',
//                     HargaProduk: 16000,
//                   ),
//                   ProductCard(
//                     id: 'KueKering_4',
//                     imageUrl: 'assets/images/KueKering_4.png',
//                     NamaProduk: 'Cinnamon Roll',
//                     HargaProduk: 26000,
//                   ),
//                   ProductCard(
//                     id: 'KueKering_3',
//                     imageUrl: 'assets/images/KueKering_3.png',
//                     NamaProduk: 'Le Pain Swisse',
//                     HargaProduk: 24000,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
