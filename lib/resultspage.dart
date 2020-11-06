import 'dart:ui';
import 'constants.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              height: 50.0,
              child: Text('Your Result', style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'OVERWEIGHT',
                    style: TextStyle(
                        color: Color(0xFF48A666),
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0),
                  ),
                  Text(
                    '26.7',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 60.0),
                  ),
                  Text(
                    'You have a higher than normal cody weight. Try to exercise more.',
                    style: TextStyle(fontSize: 25.0),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
            child: Container(
              child: Center(
                child: Text(
                  'RECALCULATE',
                  style: kLargeButtonTesxtStyle,
                ),
              ),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              color: kBottomCardColor,
              height: kBottomContainerHeight,
            ),
          )
        ],
      ),
    );
  }
}
