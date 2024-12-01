import 'package:fin_track/add_digital_wallent_screens/addcardtwo_screen.dart';
import 'package:fin_track/constants/button.dart';
import 'package:fin_track/constants/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class AddcardoneScreen extends StatefulWidget {
  const AddcardoneScreen({super.key});

  @override
  State<AddcardoneScreen> createState() => _AddcardoneScreenState();
}

class _AddcardoneScreenState extends State<AddcardoneScreen> {
  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  bool? _passwordVisible;

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.white,
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
                    'Add Digital Wallet',
                    style: heading1,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Enter your credit card info into the box below.',
                    style: subtitletext,
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Text(
                    'Account  Name',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xff414141),
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  TextFormField(
                    initialValue: null,
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                    cursorHeight: 23,
                    decoration: InputDecoration(
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
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
                          borderRadius: BorderRadius.circular(12)),
                      contentPadding:
                          const EdgeInsets.only(left: 15, top: 19, bottom: 19),
                      border: InputBorder.none,
                      hintText: 'Digital wallet name',
                      hintStyle: const TextStyle(
                          color: Color(0xffC7C7C7),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Last four digits from Card Number',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xff414141),
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  TextFormField(
                    initialValue: null,
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                    cursorHeight: 23,
                    decoration: InputDecoration(
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
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
                          borderRadius: BorderRadius.circular(12)),
                      prefixIcon: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/Yandex.svg',
                            height: 25,
                          )
                        ],
                      ),
                      contentPadding:
                          const EdgeInsets.only(left: 15, top: 19, bottom: 19),
                      border: InputBorder.none,
                      hintText: ' **** **** **** 2345',
                      hintStyle: const TextStyle(
                          color: Color(0xffC7C7C7),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
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
                        'Verify',
                        style:
                            TextStyle(fontSize: 23, color: Color(0xff5A5A5A)),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddcardtwoScreen()));
                    },
                    colorB: Color(0xffB8B8B8),
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
