import 'package:fin_track/constants/button.dart';
import 'package:fin_track/constants/utils.dart';
import 'package:fin_track/login_screens/otpverification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    'Log in to FinTrack',
                    style: heading1,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Enter your registered mobile number to log in.',
                    style: subtitletext,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Phone',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xff414141),
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  IntlPhoneField(
                    disableLengthCheck: true,
                    showDropdownIcon: false,
                    style: TextStyle(fontSize: 17),
                    flagsButtonMargin: EdgeInsets.all(10),
                    dropdownIconPosition: IconPosition.trailing,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffB8B8B8),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                      contentPadding:
                          EdgeInsets.only(left: 20, top: 23, bottom: 23),
                      labelText: 'Mobile number',
                      labelStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffB8B8B8),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffB8B8B8),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          )),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        borderSide: BorderSide(
                          color: Color(0xffB8B8B8),
                        ),
                      ),
                    ),
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                    onCountryChanged: (country) {
                      print(
                        'Country changed to: ' + country.name,
                      );
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xff414141),
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  TextFormField(
                    controller: controller,
                    obscureText: !_passwordVisible!,
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                    obscuringCharacter: '*',
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
                          const EdgeInsets.only(left: 15, top: 23, bottom: 23),
                      border: InputBorder.none,
                      hintText: 'Enter Password',
                      prefixIcon: Icon(
                        Icons.lock_outline_rounded,
                        color: Color(0xffB8B8B8),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible!
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: const Color(0xffB8B8B8),
                          size: 25,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible!;
                          });
                        },
                      ),
                      hintStyle: const TextStyle(
                          color: Color(0xffB8B8B8),
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Forgot password?',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff1E3AE5),
                      )),
                  SizedBox(
                    height: 25,
                  ),
                  Button(
                    height: 60,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'Log in',
                        style:
                            TextStyle(fontSize: 23, color: Color(0xff5A5A5A)),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const OtpverificationScreen()));
                    },
                    colorB: Color(0xffB8B8B8),
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
