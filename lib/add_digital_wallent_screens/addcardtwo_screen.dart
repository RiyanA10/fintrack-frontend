import 'package:fin_track/constants/button.dart';
import 'package:fin_track/constants/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddcardtwoScreen extends StatelessWidget {
  const AddcardtwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          backgroundColor: Color(0xffF7F7F7),
          body: Padding(
            padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BackNavigator(),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 57,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffE8F5E9),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/check-circle.svg',
                                  height: 27,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Your card successfully added',
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xff1B5E21)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Card list',
                      style: heading1,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 57,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/Yandex.svg',
                                  height: 27,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Account',
                                  style: subtitletext,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '************3994',
                                  style: subtitletext,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 57,
                            width: 10,
                            decoration: BoxDecoration(
                                color: Color(0xffEAEBFF),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(13),
                                    bottomRight: Radius.circular(13))),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 45,
                    ),
                    Button(
                      height: 60,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          Text(
                            ' Add another card',
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const OTPVerificationScreen()));
                      },
                      colorB: buttoncolor,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
