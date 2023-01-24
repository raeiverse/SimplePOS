// import 'package:flutter/material.dart';

// import '../../../theme.dart';
// import '../ProductCard.dart';

// class PromoContent extends StatelessWidget {
//   const PromoContent({super.key});

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
//                   'Promo',
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
//                     id: 'KueKering_1',
//                     imageUrl: 'assets/images/KueKering_1.png',
//                     NamaProduk: 'Croissant Original',
//                     HargaProduk: 16000,
//                     NilaiDiskon: 4000,
//                     Diskon: true,
//                   ),
//                   ProductCard(
//                     id: 'promo_2',
//                     imageUrl: 'assets/images/promo_2.png',
//                     NamaProduk: 'Caramel Pudding',
//                     HargaProduk: 10000,
//                     NilaiDiskon: 4000,
//                     Diskon: true,
//                   ),
//                   ProductCard(
//                     id: 'promo_3',
//                     imageUrl: 'assets/images/promo_3.png',
//                     NamaProduk: 'Croissant Almond',
//                     HargaProduk: 23000,
//                     NilaiDiskon: 7000,
//                     Diskon: true,
//                   ),
//                   ProductCard(
//                     id: 'promo_4',
//                     imageUrl: 'assets/images/promo_4.png',
//                     NamaProduk: 'Ager - Ager Buah Naga',
//                     HargaProduk: 10000,
//                     NilaiDiskon: 3000,
//                     Diskon: true,
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
