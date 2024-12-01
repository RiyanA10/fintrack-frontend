import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fin_track/constants/button.dart';
import 'package:fin_track/constants/utils.dart';
import 'package:fin_track/spending_screen/chartbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddgoaltwoScreen extends StatelessWidget {
  const AddgoaltwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: Color(0xffF7F7F7),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackNavigator(),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Your Financial Goals ',
                  style: heading1,
                ),
                SizedBox(
                  height: 45,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'You are on the budget ',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Color(0xff43A048)),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: buttoncolor, width: 1.5)),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 23,
                      ),
                      Container(
                        height: 65,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all()),
                        child: Center(
                            child: Text(
                          'Car',
                          style: heading2,
                        )),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 100,
                              width: 175,
                              decoration: BoxDecoration(
                                color: buttoncolor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/credit-card-minus.svg',
                                            height: 30,
                                          ),
                                          Text(
                                            'Total Spend',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        '500.00 SAR',
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w900),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Container(
                              height: 100,
                              width: 175,
                              decoration: BoxDecoration(
                                color: Color(0xffFBC02D),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/credit-card.svg',
                                            height: 30,
                                          ),
                                          Text(
                                            ' Total Saving',
                                            style: TextStyle(
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        '400.00 SAR',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(height: 300, child: ChartBar()),
                      SizedBox(
                        height: 35,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                Button(
                  height: 60,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                      ),
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
