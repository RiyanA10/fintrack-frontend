import 'package:fin_track/constants/button.dart';
import 'package:fin_track/constants/list_data.dart';
import 'package:fin_track/constants/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReceivingthreeScreen extends StatefulWidget {
  const ReceivingthreeScreen({super.key});

  @override
  State<ReceivingthreeScreen> createState() => _ReceivingthreeScreenState();
}

class _ReceivingthreeScreenState extends State<ReceivingthreeScreen> {
  String? q;

  String? q2;
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
                  'Select a Purpose',
                  style: heading1,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Select a Method for Sending Money',
                  style: subtitletext,
                ),
                SizedBox(
                  height: 35,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ListTile(
                      minTileHeight: 90,
                      tileColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      leading: SvgPicture.asset(
                        'assets/Frame 208 (2).svg',
                      ),
                      title: Text(
                        'Personal',
                        style: heading2,
                      ),
                      subtitle: Text(
                        'Pay your friends and family.',
                        style: subtitletext,
                      ),
                      trailing: Radio(
                        activeColor: buttoncolor,
                        value: "a",
                        groupValue: q,
                        onChanged: (value) {
                          setState(() {
                            q = value.toString();
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ListTile(
                      minTileHeight: 90,
                      tileColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      leading: SvgPicture.asset(
                        'assets/Frame 208 (3).svg',
                      ),
                      title: Text(
                        'Business',
                        style: heading2,
                      ),
                      subtitle: Text(
                        'Pay your employee',
                        style: subtitletext,
                      ),
                      trailing: Radio(
                        activeColor: buttoncolor,
                        value: "b",
                        groupValue: q,
                        onChanged: (value) {
                          setState(() {
                            q = value.toString();
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Button(
                  height: 60,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'Continue',
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
