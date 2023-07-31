import 'package:flutter/material.dart';

class PaidInstallmentContainer extends StatelessWidget {
  final int installmentNumber;
  final int amount;

  PaidInstallmentContainer({
    required this.installmentNumber,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      child: Container(
        height: 180,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 208, 240, 240),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
                offset: Offset.fromDirection(1.0),
                blurRadius: 2,
                spreadRadius: 2,
                color: const Color.fromARGB(255, 208, 207, 207)),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Installment $installmentNumber"),
                    Text(
                      "\u{20B9} ${amount}",
                      style:
                          const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Image.asset("assets/images/completedGreen.png")
                  ],
                ),
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                                "assets/images/fees_installment.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  Positioned(
                      right: 8,
                      top: 8,
                      child: Image.asset("assets/images/rightMark.png")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}