import 'package:fin_track/constants/button.dart';
import 'package:fin_track/constants/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SendingthreeScreen extends StatefulWidget {
  const SendingthreeScreen({super.key});

  @override
  State<SendingthreeScreen> createState() => _SendingthreeScreenState();
}

class _SendingthreeScreenState extends State<SendingthreeScreen> {
  String? selectedcurrency;
  String? q;
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
                              'Transaction Complete! - 01 Jan 2023 at 5:00 pm',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xff1B5E21)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                      Text(
                        'Coinpay Transaction ID: JD890KQ',
                        style: TextStyle(
                          fontSize: 15,
                          color: buttoncolor,
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
                Text(
                  'Account',
                  style: heading2,
                ),
                SizedBox(
                  height: 30,
                ),
                ListTile(
                  minVerticalPadding: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13)),
                  contentPadding: EdgeInsets.zero,
                  tileColor: Colors.white,
                  minTileHeight: 70,
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SvgPicture.asset(
                      'assets/Payments.svg',
                      height: 27,
                    ),
                  ),
                  title: Row(
                    children: [
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
                  trailing: Container(
                    height: 57,
                    width: 10,
                    decoration: BoxDecoration(
                        color: Color(0xffEAEBFF),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Button(
                    border: Border.all(color: buttoncolor),
                    height: 60,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'Back to Homepage',
                        style: TextStyle(fontSize: 23, color: buttoncolor),
                      ),
                    ),
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const OTPVerificationScreen()));
                    },
                    colorB: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Button(
                    height: 60,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'Make another Payment',
                        style: TextStyle(fontSize: 23, color: Colors.white),
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
                  height: 50,
                ),
                Text(
                  "Thank you for using our app to send money. If you have any questions or concerns, please don't hesitate to",
                  textAlign: TextAlign.center,
                  style: subtitletext,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'contact us.',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: buttoncolor,
                      ),
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
      )),
    );
  }
}
