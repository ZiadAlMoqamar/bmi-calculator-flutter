import 'package:flutter/material.dart';
import '../constants.dart';


class GenderCardColumn extends StatelessWidget {
  GenderCardColumn({this.cardIcon, this.cardText});

  final IconData cardIcon;
  final String cardText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          cardText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}