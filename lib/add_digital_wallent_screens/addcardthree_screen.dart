import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fin_track/constants/button.dart';
import 'package:fin_track/constants/list_data.dart';
import 'package:fin_track/constants/utils.dart';
import 'package:fin_track/sending_screens/sendingone_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddcardthreeScreen extends StatefulWidget {
  AddcardthreeScreen({super.key});

  @override
  State<AddcardthreeScreen> createState() => _AddcardthreeScreenState();
}

class _AddcardthreeScreenState extends State<AddcardthreeScreen> {
  final List<String> accounts = [
    'account 1',
    'account 2',
    'account 3',
  ];

  String? selectedaccount;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          backgroundColor: Color(0xffF7F7F7),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BackNavigator(),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Add Manual Transaction ',
                    style: heading1,
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
                                  'Choose your account',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          items: accounts
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
                          value: selectedaccount,
                          onChanged: (value) {
                            setState(() {
                              selectedaccount = value;
                            });
                          },
                          buttonStyleData: ButtonStyleData(
                            height: 50,
                            width: 270,
                            padding: const EdgeInsets.only(left: 7, right: 7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
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
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/Frame 164.svg',
                              height: 70,
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Container(
                              height: 50,
                              width: 1,
                              color: Colors.grey.shade300,
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            SvgPicture.asset(
                              'assets/Frame 166.svg',
                              height: 70,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
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
                              hintText: 'Kind of the transaction',
                              hintStyle: const TextStyle(
                                  color: Color(0xffC7C7C7),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
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
                              hintText: 'Enter SAR',
                              hintStyle: const TextStyle(
                                  color: Color(0xffC7C7C7),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Button(
                        height: 60,
                        width: 300,
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
                                      const SendingoneScreen()));
                        },
                        colorB: buttoncolor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Last Manual Transaction Added',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13)),
                    elevation: 3,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13)),
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: transactionData.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                ListTile(
                                    leading: Image.asset(
                                      transactionData[index].image,
                                    ),
                                    trailing: Text(
                                      transactionData[index].total,
                                      style: TextStyle(
                                          color: transactionData[index].color,
                                          fontSize: 15),
                                    ),
                                    title: Text(
                                      transactionData[index].title,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top: 5, bottom: 5),
                                  child: Divider(),
                                )
                              ],
                            );
                          }),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
