import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fin_track/constants/button.dart';
import 'package:fin_track/constants/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ReceivingoneScreen extends StatefulWidget {
  const ReceivingoneScreen({super.key});

  @override
  State<ReceivingoneScreen> createState() => _ReceivingoneScreenState();
}

class _ReceivingoneScreenState extends State<ReceivingoneScreen> {
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
                  height: 30,
                ),
                Container(
                  height: 500,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(23)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      QrImageView(
                        data: '1234567890',
                        version: QrVersions.auto,
                        size: 300.0,
                        foregroundColor: buttoncolor,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Scan to get Paid',
                        style: heading1,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Hold the code inside the frame, it will be\nscanned automatically',
                        textAlign: TextAlign.center,
                        style: subtitletext,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Button(
                  height: 60,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'Request for Payment',
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
                SizedBox(
                  height: 10,
                ),
                Button(
                  height: 60,
                  width: double.infinity,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.send,
                          size: 27,
                          color: buttoncolor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Share to Receive Money',
                          style: TextStyle(fontSize: 23, color: buttoncolor),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const OTPVerificationScreen()));
                  },
                  colorB: Colors.white,
                  border: Border.all(color: buttoncolor),
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
