import 'package:fin_track/constants/utils.dart';
import 'package:flutter/material.dart';

class MoreInfoScreen extends StatelessWidget {
  const MoreInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const SafeArea(
        bottom: false,
        child: Scaffold(
          backgroundColor: Color(0xffF7F7F7),
          body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.only(top: 30, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BackNavigator(),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'About finTrack',
                      style: heading1,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'FinTrack simplifies financial management with an intuitive mobile app that automates transaction categorization and provides personalized advice through an AI advisor. Designed for ease and efficiency, FinTrack helps you manage budgets, monitor expenses, and achieve financial goals with confidence.',
                      style: subtitletext,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Security & Data Privecy',
                      style: heading1,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Your security is our priority. FinTrack ensures the protection of your data with robust encryption standards, including AES-256, and adheres to GDPR and CCPA regulations. We store your data locally and securely, with encrypted backups performed daily.',
                      style: subtitletext,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Help',
                      style: heading1,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'For any inquiries or support, contact our dedicated team:\n\n\nEmail: fintrackapp10@gmail.com\nWhatsapp: +966 530-312-216\n\n\nWe’re here to help you navigate your financial journey with FinTrack.',
                      style: subtitletext,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
