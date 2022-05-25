import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '2.onboarding_scr.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var height = Get.height;
  var width = Get.width;
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnBoardingScreen(),
          ));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff61CEFF).withOpacity(0.72),
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.white,
              Color(0xff61CEFF).withOpacity(0.1),
            ],
          )),
          child: Center(
            child: Image.asset(
              'assets/photo/Vector (2).png',
              height: height * .07,
              width: height * .07,
            ),
          ),
        ),
      ),
    );
  }
}
