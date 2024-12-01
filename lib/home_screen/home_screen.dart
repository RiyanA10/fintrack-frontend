import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fin_track/constants/list_data.dart';
import 'package:fin_track/constants/utils.dart';
import 'package:fin_track/income_screen/income_screen.dart';
import 'package:fin_track/spending_screen/spending_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> currency = [
    '🇸🇦 SAR',
    '🇺🇸 USD',
    '🇬🇧 GBP',
  ];

  String? selectedcurrency;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: buttoncolor,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: Color(0xffF7F7F7),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/Group 6345.png',
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 300,
                        child: TextFormField(
                          initialValue: null,
                          style: const TextStyle(
                              fontSize: 18, color: Colors.black),
                          cursorHeight: 23,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.3),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.3),
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.white.withOpacity(0.3),
                            )),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white.withOpacity(0.3),
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            contentPadding: const EdgeInsets.only(
                                left: 15, top: 19, bottom: 19),
                            border: InputBorder.none,
                            hintText: 'Search “ Payments”',
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton2<String>(
                          iconStyleData: IconStyleData(
                              icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          )),
                          isExpanded: true,
                          hint: const Row(
                            children: [
                              SizedBox(
                                width: 4,
                              ),
                              Expanded(
                                child: Text(
                                  '🇸🇦 SAR',
                                  style: TextStyle(
                                    color: Colors.white,
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
                                        color: Colors.white,
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
                            width: 110,
                            padding: const EdgeInsets.only(left: 7, right: 7),
                            elevation: 0,
                          ),
                          dropdownStyleData: DropdownStyleData(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            maxHeight: 250,
                            width: 190,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: buttoncolor,
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
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '2,000',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                          Text(
                            'SAR',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        'Available Balance',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white.withOpacity(0.7)),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 5, right: 5, top: 35),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 19,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SpendingScreen()));
                                    },
                                    child: SvgPicture.asset(
                                      'assets/Frame 164.svg',
                                      height: 70,
                                    ),
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
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  IncomeScreen()));
                                    },
                                    child: SvgPicture.asset(
                                      'assets/Frame 166.svg',
                                      height: 70,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 19,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Last Transactions',
                      style: heading1,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SpendingScreen()));
                        },
                        child: Icon(Icons.arrow_forward))
                  ],
                ),
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
                      itemCount: homeData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            ListTile(
                                leading: Image.asset(
                                  homeData[index].image,
                                ),
                                trailing: Text(
                                  homeData[index].total,
                                  style: TextStyle(
                                      color: homeData[index].color,
                                      fontSize: 15),
                                ),
                                title: Text(
                                  homeData[index].title,
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
      )),
    );
  }
}
