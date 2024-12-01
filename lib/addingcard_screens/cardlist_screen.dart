import 'package:fin_track/constants/button.dart';
import 'package:fin_track/constants/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardlistScreen extends StatelessWidget {
  const CardlistScreen({super.key});

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
                  Container(
                    height: 57,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xffE8F5E9),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/check-circle.svg',
                                height: 27,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Your card successfully added',
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff1B5E21)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Card list',
                    style: heading1,
                  ),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
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
                    ' Add another card',
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                    ),
                  ),
                ],
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
        ),
      ),
    );
  }
}
