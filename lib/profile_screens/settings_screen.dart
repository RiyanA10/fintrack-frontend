import 'package:fin_track/constants/utils.dart';
import 'package:fin_track/login_screens/login_screen.dart';
import 'package:fin_track/profile_screens/accountsetup_screen.dart';
import 'package:fin_track/profile_screens/languagesetting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool status = false;

  bool status2 = false;

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
                children: [
                  Text(
                    'Settings',
                    style: heading1,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13)),
                    elevation: 1,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SvgPicture.asset(
                                  'assets/edit.svg',
                                  height: 30,
                                )
                              ],
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/🦆 emoji _crown_.svg',
                            height: 50,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Abdulrahman',
                            style: heading1,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '+966530312216',
                            style: subtitletext,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13)),
                    elevation: 1,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          ListTile(
                              leading: SvgPicture.asset(
                                'assets/Frame 251.svg',
                              ),
                              trailing: Container(
                                width: 65,
                                height: 36,
                                child: FlutterSwitch(
                                  width: 60.0,
                                  height: 33.0,
                                  valueFontSize: 25.0,
                                  toggleSize: 35.0,
                                  value: status,
                                  borderRadius: 30.0,
                                  padding: 0.0,
                                  toggleColor: Colors.white,
                                  showOnOff: false,
                                  onToggle: (val) {
                                    setState(() {
                                      status = val;
                                    });
                                  },
                                ),
                              ),
                              title: Text(
                                'Premium',
                              )),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 5, bottom: 5),
                            child: Divider(),
                          ),
                          ListTile(
                              leading: SvgPicture.asset(
                                'assets/t (3).svg',
                              ),
                              trailing: Container(
                                width: 65,
                                height: 36,
                                child: FlutterSwitch(
                                  width: 60.0,
                                  height: 33.0,
                                  valueFontSize: 25.0,
                                  toggleSize: 35.0,
                                  value: status,
                                  borderRadius: 30.0,
                                  padding: 0.0,
                                  toggleColor: Colors.white,
                                  showOnOff: false,
                                  onToggle: (val) {
                                    setState(() {
                                      status = val;
                                    });
                                  },
                                ),
                              ),
                              title: Text(
                                'Dark Mode',
                              )),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 5, bottom: 5),
                            child: Divider(),
                          ),
                          ListTile(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            LanguagesettingScreen()));
                              },
                              leading: SvgPicture.asset(
                                'assets/Frame 250 (1).svg',
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 25,
                              ),
                              title: Text(
                                'Language',
                              )),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 5, bottom: 5),
                            child: Divider(),
                          ),
                          ListTile(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AccountsetupScreen()));
                              },
                              leading: SvgPicture.asset(
                                'assets/l.svg',
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 25,
                              ),
                              title: Text(
                                'Default Currency',
                              )),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 5, bottom: 5),
                            child: Divider(),
                          ),
                          ListTile(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                              leading: SvgPicture.asset(
                                'assets/d.svg',
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 25,
                              ),
                              title: Text(
                                'Logout',
                              )),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 5, bottom: 5),
                            child: Divider(),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
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
