import 'package:fin_track/constants/button.dart';
import 'package:fin_track/constants/utils.dart';
import 'package:fin_track/financialgoals_screens/addgoalone_screen.dart';
import 'package:fin_track/financialgoals_screens/addgoaltwo_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';

class YourgoalsScreen extends StatelessWidget {
  const YourgoalsScreen({super.key});

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
                    'Your Financial Goals ',
                    style: heading1,
                  ),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Slidable(
                            endActionPane: ActionPane(
                              motion: ScrollMotion(),
                              children: [
                                SlidableAction(
                                  padding: EdgeInsets.zero,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(13),
                                      bottomRight: Radius.circular(13)),
                                  onPressed: (_) {},
                                  backgroundColor: Color(0xFFFE4A49),
                                  foregroundColor: Colors.white,
                                  icon: Icons.delete,
                                  label: '',
                                ),
                              ],
                            ),
                            child: ListTile(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AddgoaltwoScreen()));
                              },
                              minTileHeight: 67,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13)),
                              tileColor: Colors.white,
                              leading: SvgPicture.asset(
                                'assets/trophy-star.svg',
                                height: 30,
                              ),
                              title: Text(
                                'Car',
                                style: heading2,
                              ),
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 45),
            child: Button(
              height: 60,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  Text(
                    ' Add another goal',
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddgoaloneScreen()));
              },
              colorB: buttoncolor,
            ),
          ),
        ),
      ),
    );
  }
}
