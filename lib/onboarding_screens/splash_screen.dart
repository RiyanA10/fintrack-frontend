import 'dart:async';

import 'package:fin_track/onboarding_screens/onboardingone.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? timer;

  @override
  void initState() {
    timer = Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Onboardingone()));
    });
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Image.asset(
            'assets/Splash screen.png',
            fit: BoxFit.fill,
            width: double.infinity,
          ),
        ],
      ),
    ));
  }
}
