import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fin_track/constants/button.dart';
import 'package:fin_track/constants/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class ReceivingfourScreen extends StatefulWidget {
  const ReceivingfourScreen({super.key});

  @override
  State<ReceivingfourScreen> createState() => _ReceivingfourScreenState();
}

class _ReceivingfourScreenState extends State<ReceivingfourScreen> {
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
                  'Enter Amount',
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
                      DropdownButtonHideUnderline(
                        child: DropdownButton2<String>(
                          isExpanded: true,
                          hint: const Row(
                            children: [
                              SizedBox(
                                width: 4,
                              ),
                              Expanded(
                                child: Text(
                                  '🇸🇦',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          items: currency
                              .map((String item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 25,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ))
                              .toList(),
                          value: selectedcurrency,
                          onChanged: (value) {
                            setState(() {
                              selectedcurrency = value;
                            });
                          },
                          buttonStyleData: ButtonStyleData(
                            height: 50,
                            width: 85,
                            padding: const EdgeInsets.only(left: 7, right: 7),
                            elevation: 0,
                          ),
                          dropdownStyleData: DropdownStyleData(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            maxHeight: 250,
                            width: 85,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black26, width: 1.5),
                              borderRadius: BorderRadius.circular(13),
                              color: Colors.white,
                            ),
                            offset: const Offset(-20, 0),
                            scrollbarTheme: ScrollbarThemeData(
                              radius: const Radius.circular(40),
                            ),
                          ),
                          menuItemStyleData: const MenuItemStyleData(
                            height: 50,
                            padding: EdgeInsets.only(left: 17, right: 17),
                          ),
                        ),
                      ),
                      Container(
                        width: 210,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          initialValue: null,
                          style: const TextStyle(
                              fontSize: 18, color: Colors.black),
                          cursorHeight: 23,
                          decoration: InputDecoration(
                            enabled: true,
                            contentPadding: const EdgeInsets.only(
                                left: 15, top: 19, bottom: 19),
                            hintText: 'Enter amount',
                            hintStyle: const TextStyle(
                                color: Color(0xffC7C7C7),
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
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
                              'Continue',
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
