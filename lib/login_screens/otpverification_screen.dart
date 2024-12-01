import 'package:fin_track/constants/button.dart';
import 'package:fin_track/constants/utils.dart';
import 'package:fin_track/login_screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class OtpverificationScreen extends StatelessWidget {
  const OtpverificationScreen({super.key});

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
                          currentStep: 1,
                          progressColor: Color(0xff1E3AE5),
                          backgroundColor: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10), //  NEW
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'OTP',
                              style: heading1,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'We send 6 digits code to +966 53 031 2216',
                              style: subtitletext,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        OtpTextField(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // obscureText: true,
                          // enabledBorderColor: const Color(0xffE9ECEF),
                          margin: const EdgeInsets.all(7),

                          // borderWidth: 1,
                          textStyle: const TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff1E3AE5)),
                          numberOfFields: 6,
                          enabled: true,

                          showFieldAsBox: false,

                          fieldWidth: 45,

                          onCodeChanged: (String code) {
                            //handle validation or checks here
                          },
                          onSubmit: (String verificationCode) {
                            // showDialog(
                            //     context: context,
                            //     builder: (context){
                            //       return AlertDialog(
                            //               title: const Text("Verification Code"),
                            //               content: Text('Code entered is $verificationCode'),
                            //       );
                            //     }
                            // );
                          }, // end onSubmit
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Didn’t get a code? ',
                              style: subtitletext,
                            ),
                            Text(
                              'Resend',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff1E3AE5),
                              ),
                            )
                          ],
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
                            'Verify Your Number',
                            style: TextStyle(fontSize: 23, color: Colors.white),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const WelcomeScreen()));
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
