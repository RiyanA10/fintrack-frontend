import 'package:flutter/material.dart';

const buttoncolor = Color(0xff304FFE);

// for text style

const heading1 = TextStyle(
  fontSize: 23,
  fontWeight: FontWeight.w500,
);
const heading2 = TextStyle(
  fontSize: 19,
  fontWeight: FontWeight.w500,
);
const subtitletext = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: Color(0xff5A5A5A),
);

class BackNavigator extends StatelessWidget {
  const BackNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_back_ios_new_outlined,
      ),
    );
  }
}
