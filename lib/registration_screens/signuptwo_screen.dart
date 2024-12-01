import 'package:fin_track/constants/button.dart';
import 'package:fin_track/constants/utils.dart';
import 'package:fin_track/registration_screens/confirmyourphone_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignuptwoScreen extends StatefulWidget {
  const SignuptwoScreen({super.key});

  @override
  State<SignuptwoScreen> createState() => _SignuptwoScreenState();
}

class _SignuptwoScreenState extends State<SignuptwoScreen> {
  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  bool? _passwordVisible;

  TextEditingController controller = TextEditingController();
  final _fromTop = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          body: CustomScrollView(
            scrollDirection: Axis.vertical,
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 30, left: 15, right: 15, bottom: 45),
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
                            'Create an Account',
                            style: heading1,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Enter your mobile number to verify your account',
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
                              contentPadding: EdgeInsets.only(
                                  left: 20, top: 23, bottom: 23),
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
                            style: const TextStyle(
                                fontSize: 18, color: Colors.black),
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
                              contentPadding: const EdgeInsets.only(
                                  left: 15, top: 23, bottom: 23),
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
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Button(
                        height: 60,
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                                fontSize: 23, color: Color(0xff5A5A5A)),
                          ),
                        ),
                        onTap: () {
                          alertBox();
                        },
                        colorB: Color(0xffB8B8B8),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  alertBox() {
    showGeneralDialog(
        barrierDismissible: true,
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        transitionBuilder: (context, anim1, anim2, child) {
          return SlideTransition(
            position: Tween(
                    begin: Offset(0, _fromTop ? -1 : 1),
                    end: const Offset(0, 0))
                .animate(anim1),
            child: child,
          );
        },
        transitionDuration: const Duration(milliseconds: 400),
        barrierColor: Colors.black54,
        context: context,
        pageBuilder: (context, anim1, anim2) {
          return StatefulBuilder(builder: (context, StateSetter setState) {
            return Dialog(
              backgroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0))),
              // backgroundColor: Colors.black,
              child: Padding(
                padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.close),
                      ],
                    ),
                    Image.asset(
                      'assets/bbbbb.jpg',
                      fit: BoxFit.fill,
                      height: 190,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Verify your phone number\nbefore we send code',
                      textAlign: TextAlign.center,
                      style: heading1,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Is this correct? '),
                        Text(
                          '+966 53 031 2216',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Button(
                      height: 60,
                      width: double.infinity,
                      child: const Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Yes',
                              style:
                                  TextStyle(fontSize: 23, color: Colors.white),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            // Image.asset('assets/arr.png')
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ConfirmyourphoneScreen()));
                      },
                      colorB: buttoncolor,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Button(
                      border: Border.all(color: buttoncolor, width: 1.5),
                      height: 60,
                      width: double.infinity,
                      child: const Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'No',
                              style:
                                  TextStyle(fontSize: 23, color: buttoncolor),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            // Image.asset('assets/arr.png')
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                      colorB: Colors.white,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            );
          });
        });
  }
}
