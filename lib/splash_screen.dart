import 'dart:async';

import 'package:flutter/material.dart';
import 'package:route_courses/main.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Image.asset('assets/splash_screen.png',fit: BoxFit.fill,height: double.infinity,),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      navigateToHomeScreen();
    });
  }

  void navigateToHomeScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()), // Replace with the screen you want to navigate to
    );
  }
}
