import 'package:fin_track/constants/list_data.dart';
import 'package:fin_track/constants/utils.dart';
import 'package:fin_track/profile_screens/banksandcards_screen.dart';
import 'package:fin_track/profile_screens/more_info_screen.dart';
import 'package:fin_track/profile_screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

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
                    'My Profile',
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
                      height: 390,
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
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            BanksandcardsScreen()));
                              },
                              leading: SvgPicture.asset(
                                'assets/Frame 250.svg',
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 25,
                              ),
                              title: Text(
                                'Bank & Cards',
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
                                            SettingsScreen()));
                              },
                              leading: SvgPicture.asset(
                                'assets/Frame 250 (1).svg',
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 25,
                              ),
                              title: Text(
                                'Settings',
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
                                            const MoreInfoScreen()));
                              },
                              leading: SvgPicture.asset(
                                'assets/Frame 250 (2).svg',
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 25,
                              ),
                              title: Text(
                                'More Info',
                              )),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 5, bottom: 5),
                            child: Divider(),
                          ),
                        ],
                      ),
                    ),
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
