import 'package:fin_track/constants/button.dart';
import 'package:fin_track/constants/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatoneScreen extends StatelessWidget {
  const ChatoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 79, bottom: 45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      BackNavigator(),
                      Text(
                        'AI ChatBot',
                        style: heading2,
                      ),
                      Text(
                        '',
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                SvgPicture.asset(
                  'assets/Group 6340.svg',
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Button(
                height: 60,
                width: double.infinity,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/chat.svg'),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Start Chat',
                        style: TextStyle(fontSize: 23, color: Colors.white),
                      ),
                    ],
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
          ],
        ),
      ),
    );
  }
}
