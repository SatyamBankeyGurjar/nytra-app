import 'package:flutter/material.dart';
import '../../color.dart';

class DueInstallmentContainer extends StatelessWidget {
  final int installmentNumber;
  final int amount;
  final int size;
  final int dueAmount;
  final double progressPercentage;

  DueInstallmentContainer({
    required this.installmentNumber,
    required this.amount,
    required this.size,
    required this.dueAmount,
    required this.progressPercentage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      child: Container(
        height: 180,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                  offset: Offset.fromDirection(1.0),
                  blurRadius: 2,
                  spreadRadius: 2,
                  color: const Color.fromARGB(255, 208, 207, 207)),
            ],
            border: Border.all(color: themeColor)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8, left: 8, bottom: 4),
              child: LinearProgressIndicator(
                value: amount / size,
                minHeight: 4,
                backgroundColor: Colors.grey[300],
                valueColor: const AlwaysStoppedAnimation<Color>(themeColor),
              ),
            ),
            Center(
              child: Text(
                ' ${(progressPercentage).toStringAsFixed(2)}% Completed',
                style: const TextStyle(fontSize: 8, color: themeColor),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Divider(
              height: 0.5,
              color: themeColor,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Installment $installmentNumber"),
                        Text(
                          "\u{20B9} $size",
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        amount != 0
                            ? Row(
                                children: [
                                  Text(
                                    "\u{20B9} $dueAmount  ",
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Image.asset("assets/images/due.png")
                                ],
                              )
                            : const SizedBox(),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                              color: themeColor,
                              borderRadius: BorderRadius.circular(5.0)),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Pay Now",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(15.0),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                                "assets/images/fees_installment.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
