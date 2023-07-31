// import 'package:flutter/material.dart';

// class CompleteInstallment extends StatelessWidget {
//   // var installment;
//   CompleteInstallment({
//     super.key,
// //  required this.installment
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
//           child: Container(
//             height: 180,
//             width: MediaQuery.of(context).size.width,
//             decoration: BoxDecoration(
//               color: Color.fromARGB(255, 208, 240, 240),
//               borderRadius: BorderRadius.circular(10.0),
//               boxShadow: [
//                 BoxShadow(
//                     offset: Offset.fromDirection(1.0),
//                     blurRadius: 2,
//                     spreadRadius: 2,
//                     color: const Color.fromARGB(255, 208, 207, 207))
//               ],
//             ),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     // crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       const Text("1st Installment"),
//                       const Text(
//                         "\u{20B9} 11,500",
//                         style: TextStyle(
//                             fontSize: 20, fontWeight: FontWeight.bold),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Image.asset("assets/images/completedGreen.png")
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Stack(
//                     children: [
//                       Container(
//                         margin: EdgeInsets.all(15),
//                         // padding: EdgeInsets.all(10),
//                         height: 140,
//                         width: 140,
//                         decoration: BoxDecoration(
//                             image: const DecorationImage(
//                                 image: AssetImage(
//                                     "assets/images/fees_installment.png"),
//                                 fit: BoxFit.cover),
//                             borderRadius: BorderRadius.circular(10.0)),
//                       ),
//                       Positioned(
//                           right: 8,
//                           top: 8,
//                           child: Image.asset("assets/images/rightMark.png"))
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class InstallmentsList {
//   List<Widget> installmentStatus() {
//     return List.generate(1, (index) {
//       return Padding(
//         padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
//         child: Container(
//           height: 180,
//           width: double.infinity,
//           decoration: BoxDecoration(
//             color: Color.fromARGB(255, 208, 240, 240),
//             borderRadius: BorderRadius.circular(10.0),
//             boxShadow: [
//               BoxShadow(
//                   offset: Offset.fromDirection(1.0),
//                   blurRadius: 2,
//                   spreadRadius: 2,
//                   color: const Color.fromARGB(255, 208, 207, 207))
//             ],
//           ),
//           child: Row(
//             children: [
//               Expanded(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   // crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     const Text("1st Installment"),
//                     const Text(
//                       "\u{20B9} 11,500",
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Image.asset("assets/images/completedGreen.png")
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Stack(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.all(15),
//                       // padding: EdgeInsets.all(10),
//                       height: 140,
//                       width: 140,
//                       decoration: BoxDecoration(
//                           image: const DecorationImage(
//                               image: AssetImage(
//                                   "assets/images/fees_installment.png"),
//                               fit: BoxFit.cover),
//                           borderRadius: BorderRadius.circular(10.0)),
//                     ),
//                     Positioned(
//                         right: 8,
//                         top: 8,
//                         child: Image.asset("assets/images/rightMark.png"))
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
//     });
//   }
// }
