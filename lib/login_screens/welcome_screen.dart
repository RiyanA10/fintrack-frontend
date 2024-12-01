import 'package:fin_track/constants/bottombar_forall.dart';
import 'package:fin_track/constants/button.dart';
import 'package:fin_track/constants/utils.dart';
import 'package:fin_track/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 45),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              BackNavigator(),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        LinearProgressBar(
                          maxSteps: 6,
                          progressType: LinearProgressBar
                              .progressTypeLinear, // Use Linear progress
                          currentStep: 6,
                          progressColor: Color(0xff1E3AE5),
                          backgroundColor: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10), //  NEW
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SvgPicture.asset('assets/Group 6342.svg'),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Button(
                        height: 60,
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            'Continue',
                            style: TextStyle(fontSize: 23, color: Colors.white),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      BottomnavigationbarForAll()));
                        },
                        colorB: buttoncolor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
