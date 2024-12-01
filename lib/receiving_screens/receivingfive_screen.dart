import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fin_track/constants/button.dart';
import 'package:fin_track/constants/utils.dart';
import 'package:flutter/material.dart';

class ReceivingfiveScreen extends StatefulWidget {
  const ReceivingfiveScreen({super.key});

  @override
  State<ReceivingfiveScreen> createState() => _ReceivingfiveScreenState();
}

class _ReceivingfiveScreenState extends State<ReceivingfiveScreen> {
  final List<String> currency = [
    '🇸🇦',
    '🇺🇸',
    '🇬🇧',
  ];

  String? selectedcurrency;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: Color(0xffF7F7F7),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 30, bottom: 45, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    BackNavigator(),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Send Resuest',
                  style: heading1,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Please enter an amount to get paid',
                  style: subtitletext,
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      CircleAvatar(
                        radius: 56,
                        backgroundImage: AssetImage('assets/Ellipse 25.png'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Mehedi Hasan',
                        style: heading2,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'helloyouthmind@gmail.com',
                        style: subtitletext,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Button(
                          height: 60,
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              'Request \$500',
                              style:
                                  TextStyle(fontSize: 23, color: Colors.white),
                            ),
                          ),
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => const OTPVerificationScreen()));
                          },
                          colorB: buttoncolor,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
