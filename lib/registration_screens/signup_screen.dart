import 'package:fin_track/constants/button.dart';
import 'package:fin_track/constants/utils.dart';
import 'package:fin_track/login_screens/login_screen.dart';
import 'package:fin_track/registration_screens/signuptwo_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100, bottom: 45),
          child: Column(
            children: [
              LinearProgressBar(
                maxSteps: 6,
                progressType:
                    LinearProgressBar.progressTypeLinear, // Use Linear progress
                currentStep: 1,
                progressColor: Color(0xff1E3AE5),
                backgroundColor: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10), //  NEW
              ),
              SizedBox(
                height: 20,
              ),
              SvgPicture.asset(
                'assets/Group 6343.svg',
              ),
              SizedBox(
                height: 30,
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
                          'Sign up',
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
                            builder: (context) => const SignuptwoScreen()));
                  },
                  colorB: buttoncolor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Button(
                  border: Border.all(color: buttoncolor, width: 1.5),
                  height: 60,
                  width: double.infinity,
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Log in',
                          style: TextStyle(fontSize: 23, color: buttoncolor),
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
                            builder: (context) => const LoginScreen()));
                  },
                  colorB: Colors.white,
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Text(
                'By continuing you accept our',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'Terms of Service',
                        style: TextStyle(
                          fontSize: 16,
                          color: buttoncolor,
                        ),
                      ),
                      Container(
                        height: 1,
                        width: 105,
                        color: buttoncolor,
                      )
                    ],
                  ),
                  Text(
                    ' and ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Privacy Policy',
                        style: TextStyle(
                          fontSize: 16,
                          color: buttoncolor,
                        ),
                      ),
                      Container(
                        height: 1,
                        width: 85,
                        color: buttoncolor,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
