// import 'package:flutter/material.dart';

// class CompleteFeeGrid extends StatelessWidget {
//   String? months;
//   CompleteFeeGrid({super.key, required this.months});
//   //  schoolMonths = {
//   //   'July',
//   //   'August',
//   //   'September',
//   //   'October',
//   //   'November',
//   //   'December',
//   //   'January',
//   //   'February',
//   //   'March',
//   //   'April',
//   //   'May',
//   //   'June'
//   // };

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           height: 155,
//           width: 155,
//           decoration: const BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage("assets/images/transbgImage.png"),
//                 fit: BoxFit.cover),
//           ),
//           child: Stack(
//             alignment: AlignmentDirectional.topCenter,
//             children: [
//               Positioned(
//                   right: 10,
//                   top: 8,
//                   child: Image.asset("assets/images/rightMark.png")),
//               const Positioned(
//                 top: 20,
//                 child: Text(
//                   "September",
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//               ),
//               Positioned(
//                 top: 45,
//                 child: Container(
//                   height: 15,
//                   width: 50,
//                   color: Colors.green.shade400,
//                   child: const Center(
//                       child: Text(
//                     "\$ 500",
//                     style: TextStyle(fontSize: 10, color: Colors.white),
//                   )),
//                 ),
//               ),
//               Positioned(
//                   bottom: 10, child: Image.asset("assets/images/schoolBus.png"))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
