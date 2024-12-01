import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fin_track/constants/button.dart';
import 'package:fin_track/constants/utils.dart';
import 'package:fin_track/profile_screens/profilescreen.dart';
import 'package:flutter/material.dart';

class AccountsetupScreen extends StatefulWidget {
  AccountsetupScreen({super.key});

  @override
  State<AccountsetupScreen> createState() => _AccountsetupScreenState();
}

class _AccountsetupScreenState extends State<AccountsetupScreen> {
  final List<String> currency = [
    '🇸🇦 SAR (Saudi Arabia )',
    '🇺🇸 USD (United State)',
    '🇬🇧 GBP (United Kingdom)',
  ];

  String? selectedcurrency;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          backgroundColor: Color(0xffF7F7F7),
          body: Padding(
              padding:
                  EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 45),
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
                      Text(
                        'Currency',
                        style: heading1,
                      ),
                      SizedBox(
                        height: 35,
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
                                  'Select Currency',
                                  style: TextStyle(
                                    fontSize: 17,
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
                                        fontSize: 17,
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
                            width: double.infinity,
                            padding: const EdgeInsets.only(left: 7, right: 7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: Colors.black26,
                              ),
                              // color: Color(0xffEAEBFF),
                            ),
                            elevation: 0,
                          ),
                          dropdownStyleData: DropdownStyleData(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            maxHeight: 250,
                            width: double.infinity,
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
                      SizedBox(
                        height: 30,
                      ),
                    ],
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Profilescreen()));
                    },
                    colorB: buttoncolor,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
