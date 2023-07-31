import 'package:flutter/material.dart';
import 'package:nytra_ui/color.dart';
import '../widgets/fees_payment.dart/installment_container.dart';

class FeesPaymentScreen extends StatefulWidget {
  FeesPaymentScreen({super.key});

  @override
  State<FeesPaymentScreen> createState() => _FeesPaymentScreenState();
}

class _FeesPaymentScreenState extends State<FeesPaymentScreen> {
  int _currentIndex = 0;
  var year = ['First Year', 'Second Year', 'Third Year', 'Forth year'];
  var installment = ['1st', '2nd', '3rd'];

  final int installmentSize = 10000; // The size of each installment.
  final int installment1Size = 11500; // The size of 1st installment.

  int installment1Amount = 11500;
  int installment2Amount = 8000;
  int installment3Amount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        title: const Text(
          "Fees Payment",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        // physics: NeverScrollableScrollPhysics(),
        children: [
          Container(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromRGBO(213, 210, 210, 0.498),
                        blurRadius: 1,
                        spreadRadius: 1)
                  ]),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: year.length,
                  itemBuilder: (context, index) {
                    return _tabButton(index);
                  })),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  InstallmentContainer(
                    installmentNumber: 1,
                    amount: installment1Amount,
                    size: installment1Size,
                  ),
                  InstallmentContainer(
                    installmentNumber: 2,
                    amount: installment2Amount,
                    size: installmentSize,
                  ),
                  InstallmentContainer(
                    installmentNumber: 3,
                    amount: installment3Amount,
                    size: installmentSize,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _tabButton(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: EdgeInsets.all(8.0),
        // padding: const EdgeInsets.all(5.0),
        height: 40,
        width: 100,
        decoration: BoxDecoration(
            color: _currentIndex == index ? themeColor : Colors.white,
            borderRadius: BorderRadius.circular(5.0)),
        child: Center(child: Text(year[index])),
      ),
    );
  }

  // Widget contain() {
  //   return Center(
  //     child: Padding(
  //       padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
  //       child: Container(
  //         height: 180,
  //         width: MediaQuery.of(context).size.width,
  //         decoration: BoxDecoration(
  //           color: Color.fromARGB(255, 208, 240, 240),
  //           borderRadius: BorderRadius.circular(10.0),
  //           boxShadow: [
  //             BoxShadow(
  //                 offset: Offset.fromDirection(1.0),
  //                 blurRadius: 2,
  //                 spreadRadius: 2,
  //                 color: const Color.fromARGB(255, 208, 207, 207))
  //           ],
  //         ),
  //         child: Row(
  //           children: [
  //             Expanded(
  //               child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 // crossAxisAlignment: CrossAxisAlignment.center,
  //                 children: [
  //                   const Text("1st Installment"),
  //                   const Text(
  //                     "\u{20B9} 11,500",
  //                     style:
  //                         TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //                   ),
  //                   const SizedBox(
  //                     height: 10,
  //                   ),
  //                   Image.asset("assets/images/completedGreen.png")
  //                 ],
  //               ),
  //             ),
  //             Expanded(
  //               child: Stack(
  //                 children: [
  //                   Container(
  //                     margin: EdgeInsets.all(15),
  //                     // padding: EdgeInsets.all(10),
  //                     height: 140,
  //                     width: 140,
  //                     decoration: BoxDecoration(
  //                         image: const DecorationImage(
  //                             image: AssetImage(
  //                                 "assets/images/fees_installment.png"),
  //                             fit: BoxFit.cover),
  //                         borderRadius: BorderRadius.circular(10.0)),
  //                   ),
  //                   Positioned(
  //                       right: 8,
  //                       top: 8,
  //                       child: Image.asset("assets/images/rightMark.png"))
  //                 ],
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
