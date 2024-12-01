import 'package:fin_track/constants/button.dart';
import 'package:fin_track/constants/utils.dart';
import 'package:fin_track/registration_screens/signup_screen.dart';
import 'package:flutter/material.dart';

class Onboardingthree extends StatelessWidget {
  const Onboardingthree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100, bottom: 45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/Group 6339.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Button(
                height: 60,
                width: double.infinity,
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Next',
                        style: TextStyle(fontSize: 23, color: Colors.white),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      // Image.asset('assets/arr.png')
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupScreen()));
                },
                colorB: buttoncolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
