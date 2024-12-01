import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fin_track/constants/button.dart';
import 'package:fin_track/constants/utils.dart';
import 'package:fin_track/financialgoals_screens/yourgoals_screen.dart';
import 'package:fin_track/spending_screen/chartbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddgoaloneScreen extends StatefulWidget {
  AddgoaloneScreen({super.key});

  @override
  State<AddgoaloneScreen> createState() => _AddgoaloneScreenState();
}

class _AddgoaloneScreenState extends State<AddgoaloneScreen> {
  final List<String> days = [
    'Monthly',
    'yearly',
  ];

  String? selecteddays;

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
                  height: 5,
                ),
                Text(
                  'Please enter an amount to save for this month',
                  style: subtitletext,
                ),
                SizedBox(
                  height: 45,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                                'Select',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        items: days
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
                        value: selecteddays,
                        onChanged: (value) {
                          setState(() {
                            selecteddays = value;
                          });
                        },
                        buttonStyleData: ButtonStyleData(
                          height: 50,
                          width: 130,
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            border: Border.all(
                              color: Colors.black26,
                            ),
                            color: Color(0xffEAEBFF),
                          ),
                          elevation: 2,
                        ),
                        dropdownStyleData: DropdownStyleData(
                          maxHeight: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white,
                          ),
                          offset: const Offset(-20, 0),
                          scrollbarTheme: ScrollbarThemeData(
                            radius: const Radius.circular(40),
                          ),
                        ),
                        menuItemStyleData: const MenuItemStyleData(
                          height: 40,
                          padding: EdgeInsets.only(left: 7, right: 7),
                        ),
                      ),
                    ),
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
                        width: 300,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          initialValue: null,
                          style: const TextStyle(
                              fontSize: 18, color: Colors.black),
                          cursorHeight: 23,
                          decoration: InputDecoration(
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            disabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.black,
                            )),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(12)),
                            contentPadding: const EdgeInsets.only(
                                left: 15, top: 19, bottom: 19),
                            border: InputBorder.none,
                            hintText: 'Kind',
                            hintStyle: const TextStyle(
                                color: Color(0xffC7C7C7),
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Container(
                        width: 300,
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
                        height: 100,
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const YourgoalsScreen()));
                        },
                        colorB: buttoncolor,
                      ),
                      SizedBox(
                        height: 30,
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
