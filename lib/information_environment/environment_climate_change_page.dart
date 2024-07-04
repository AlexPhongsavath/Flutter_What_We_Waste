// import 'package:final_project/const/const.dart';
// import 'package:flutter/material.dart';

// class EnvironmentClimateChangePage extends StatelessWidget {
//   const EnvironmentClimateChangePage({super.key});

//  @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ConstantColor.backgroundColor,
//       appBar: AppBar(
//         backgroundColor: ConstantColor.backgroundColor,
//         title: Image.asset('images/logo.png'),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             icon: const Icon(
//               Icons.search,
//             ),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: ListView(
//         padding: const EdgeInsets.all(16.0),
//         children: [
//           const Center(
//             child: Text(
//               'Data about Environment & Climate Change',
//               style: TextStyle(
//                 fontSize: 20,
//                 color: ConstantColor.colorMain,
//               ),
//             ),
//           ),
//           ProductCard(
//             title: 'Article',
//             image: 'images/Garmen.png',
//           ),
//           ProductCard(
//             title: 'preparation for disaster',
//             image: 'images/ood.png',
//           ),
//           ProductCard(
//             title: 'disaster  management',
//             image: 'images/Stationry.png',
//           ),
//           ProductCard(
//             title: 'expected disaster ',
//             image: 'images/Electronc.png',
//           ),
//           ProductCard(
//             title: 'information providers',
//             image: 'images/Platic.png',
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ProductCard extends StatelessWidget {
//   final String title;
//   final String image;
//   final VoidCallback? onTap;

//   const ProductCard(
//       {super.key, required this.title, required this.image, this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 145,
//       child: Card(
//         color: ConstantColor.colorMain,
//         margin: const EdgeInsets.symmetric(vertical: 8.0),
//         child: ListTile(
//           leading: ClipRRect(
//             child: Image.asset(
//               image,
//               fit: BoxFit.cover,
//               width: 70,
//               height: 70,
//             ),
//           ),
//           title: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 title,
//                 style: const TextStyle(
//                     fontSize: 18.0,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white),
//               ),
//             ],
//           ),
//           onTap: onTap,
//         ),
//       ),
//     );
//   }
// }