import 'package:fin_track/add_digital_wallent_screens/addcardthree_screen.dart';
import 'package:fin_track/addingcard_screens/send_screen.dart';
import 'package:fin_track/chatbox_screens/chatone_screen.dart';
import 'package:fin_track/constants/utils.dart';
import 'package:fin_track/financialgoals_screens/yourgoals_screen.dart';
import 'package:fin_track/home_screen/home_screen.dart';
import 'package:fin_track/profile_screens/profilescreen.dart';
import 'package:fin_track/spending_screen/spending_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class BottomnavigationbarForAll extends StatefulWidget {
  const BottomnavigationbarForAll({super.key});

  @override
  State<BottomnavigationbarForAll> createState() =>
      _BottomnavigationbarForAllState();
}

class _BottomnavigationbarForAllState extends State<BottomnavigationbarForAll> {
  int _selectedIndex = 0;

  void onTapImplemented(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SpendingScreen(),
    SpendingScreen(),
    const ChatoneScreen(),
    const Profilescreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 35, left: 15, right: 15),
        child: Stack(
          children: [
            Container(
              height: 80,
              child: BottomNavigationBar(
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    activeIcon: SvgPicture.asset(
                      'assets/home (1).svg',
                      height: 30,
                    ),
                    icon: SvgPicture.asset(
                      'assets/home.svg',
                      height: 30,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: SvgPicture.asset(
                      'assets/chart-pie (1).svg',
                      height: 30,
                    ),
                    icon: SvgPicture.asset(
                      'assets/chart-pie.svg',
                      height: 30,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: SvgPicture.asset(
                      'assets/Group 6341.svg',
                      height: 30,
                    ),
                  ),
                  BottomNavigationBarItem(
                    activeIcon: SvgPicture.asset(
                      'assets/chat (1).svg',
                      height: 30,
                    ),
                    icon: SvgPicture.asset(
                      'assets/chat (2).svg',
                      height: 30,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: SvgPicture.asset(
                      'assets/user (1).svg',
                      height: 30,
                    ),
                    icon: SvgPicture.asset(
                      'assets/user (2).svg',
                      height: 30,
                    ),
                    label: '',
                  ),
                ],
                unselectedItemColor: const Color.fromARGB(255, 146, 138, 138),
                selectedFontSize: 1,
                type: BottomNavigationBarType.fixed,
                currentIndex: _selectedIndex,
                backgroundColor: Colors.white,
                elevation: 5,
                onTap: onTapImplemented,
                fixedColor: Colors.white,
                landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      sheet();
                    },
                    child: SvgPicture.asset(
                      'assets/Group 6341.svg',
                      height: 73,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  sheet() {
    showMaterialModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      context: context,
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => YourgoalsScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 65),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/z.svg',
                          height: 60,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Financial Goals',
                          style: heading2,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddcardthreeScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/x.svg',
                        height: 60,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Add Manual Transaction ',
                        style: heading2,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SendScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/w.svg',
                        height: 60,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Add New Bank Account ',
                        style: heading2,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
