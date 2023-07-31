import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nytra_ui/screens/log_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const LogScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(223, 212, 212, 1),
      child: Center(child: Image.asset("assets/images/SplashLogo.png")),
    );
  }
}
