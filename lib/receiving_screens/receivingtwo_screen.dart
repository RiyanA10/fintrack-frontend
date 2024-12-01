import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fin_track/constants/button.dart';
import 'package:fin_track/constants/list_data.dart';
import 'package:fin_track/constants/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class ReceivingtwoScreen extends StatefulWidget {
  const ReceivingtwoScreen({super.key});

  @override
  State<ReceivingtwoScreen> createState() => _ReceivingtwoScreenState();
}

class _ReceivingtwoScreenState extends State<ReceivingtwoScreen> {
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
                  'Choose Recipient',
                  style: heading1,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Please select your recipient to receive money.',
                  style: subtitletext,
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  child: TextFormField(
                    initialValue: null,
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                    cursorHeight: 23,
                    decoration: InputDecoration(
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: Color(0xffB8B8B8),
                        ),
                      ),
                      disabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xffB8B8B8),
                      )),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffB8B8B8),
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      contentPadding:
                          const EdgeInsets.only(left: 15, top: 19, bottom: 19),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xffB8B8B8),
                      ),
                      border: InputBorder.none,
                      hintText: 'Search “ Recipient Email”',
                      hintStyle: const TextStyle(
                          color: Color(0xffB8B8B8),
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Most Recent',
                  style: heading2,
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: spendingData.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          ListTile(
                            leading: Image.asset(
                              'assets/Ellipse 25.png',
                            ),
                            trailing: Text(
                              '-\$100',
                              style: TextStyle(color: Colors.red, fontSize: 15),
                            ),
                            title: Text(
                              'Mehedi Hasan',
                              style: heading2,
                            ),
                            subtitle: Text(
                              'helloyouthmind@gmail.com',
                              style: subtitletext,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 5, bottom: 5),
                            child: Divider(),
                          )
                        ],
                      );
                    }),
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
