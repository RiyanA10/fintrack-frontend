import 'package:fin_track/constants/button.dart';
import 'package:fin_track/constants/utils.dart';
import 'package:fin_track/onboarding_screens/onboardingtwo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboardingone extends StatelessWidget {
  const Onboardingone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100, bottom: 45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              'assets/Group 6336.svg',
            ),
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
                          builder: (context) => const Onboardingtwo()));
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
