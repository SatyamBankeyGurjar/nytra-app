import 'package:flutter/material.dart';
import 'package:nytra_ui/color.dart';

class MonthGrids {
  static List<String> _months = [
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
  ];

  static List<Widget> generateGrids() {
    return List.generate(_months.length, (index) {
      return Container(
        height: 155,
        width: 155,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/transbgImage.png"),
              fit: BoxFit.cover),
        ),
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Positioned(
              top: 20,
              child: Text(
                _months[index],
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 55,
              child: Container(
                height: 15,
                width: 50,
                decoration: BoxDecoration(
                    color: themeColor,
                    borderRadius: BorderRadius.circular(5.0)),
                child: const Center(
                    child: Text(
                  "\$ 500",
                  style: TextStyle(fontSize: 10, color: Colors.white),
                )),
              ),
            ),
            Positioned(
                bottom: 10, child: Image.asset("assets/images/schoolBus.png"))
          ],
        ),
      );
    });
  }
}
