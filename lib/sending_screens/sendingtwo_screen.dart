import 'package:fin_track/constants/button.dart';
import 'package:fin_track/constants/utils.dart';
import 'package:fin_track/sending_screens/sendingthree_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SendingtwoScreen extends StatefulWidget {
  const SendingtwoScreen({super.key});

  @override
  State<SendingtwoScreen> createState() => _SendingtwoScreenState();
}

class _SendingtwoScreenState extends State<SendingtwoScreen> {
  String? selectedcurrency;
  String? q;
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
                  'Select a Purpose',
                  style: heading1,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Select a Method for Sending Money',
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
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Choose Account',
                  style: heading2,
                ),
                SizedBox(
                  height: 30,
                ),
                ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  minTileHeight: 65,
                  tileColor: Colors.white,
                  leading: SvgPicture.asset(
                    'assets/Payments.svg',
                    height: 27,
                  ),
                  title: Row(
                    children: [
                      Text(
                        'Account',
                        style: subtitletext,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '************3994',
                        style: subtitletext,
                      ),
                    ],
                  ),
                  trailing: Radio(
                    activeColor: buttoncolor,
                    value: "a",
                    groupValue: q,
                    onChanged: (value) {
                      setState(() {
                        q = value.toString();
                      });
                    },
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
                        'Pay \$500',
                        style: TextStyle(fontSize: 23, color: Colors.white),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const SendingthreeScreen()));
                    },
                    colorB: buttoncolor,
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
