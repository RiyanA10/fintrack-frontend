import 'package:fin_track/constants/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

class BanksandcardsScreen extends StatefulWidget {
  BanksandcardsScreen({super.key});

  @override
  State<BanksandcardsScreen> createState() => _BanksandcardsScreenState();
}

class _BanksandcardsScreenState extends State<BanksandcardsScreen> {
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BackNavigator(),
                      Text(
                        'Bank & Cards',
                        style: heading1,
                      ),
                      Text(
                        '',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      Text(
                        'Bank Cards list',
                        style: heading1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 10),
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
                              trailing: Container(
                                height: 57,
                                width: 10,
                                decoration: BoxDecoration(
                                    color: Color(0xffEAEBFF),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(13),
                                        bottomRight: Radius.circular(13))),
                              ),
                            ),
                          ),
                        );
                      }),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      Text(
                        'Digital Wallet cards list',
                        style: heading1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: 3,
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
                              leading: SvgPicture.asset(
                                'assets/Payments (1).svg',
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
                              trailing: Container(
                                height: 57,
                                width: 10,
                                decoration: BoxDecoration(
                                    color: Color(0xffEAEBFF),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(13),
                                        bottomRight: Radius.circular(13))),
                              ),
                            ),
                          ),
                        );
                      }),
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
