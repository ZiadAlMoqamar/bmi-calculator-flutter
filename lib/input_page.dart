import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = 0xFF1D1E33;
const bottomCardColor = 0xFFEB1555;
const activeCardTextColor = 0xFF8D8E98;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: Color(activeCardColor),
                      cardChild: GenderCardColumn(
                        cardIcon: FontAwesomeIcons.mars,
                        cardText: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardChild: GenderCardColumn(
                        cardIcon: FontAwesomeIcons.venus,
                        cardText: 'FEMALE',
                      ),
                      colour: Color(activeCardColor),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: Color(activeCardColor),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: Color(activeCardColor),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: Color(activeCardColor),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              color: Color(bottomCardColor),
              height: bottomContainerHeight,
            )
          ],
        ),
      ),
    );
  }
}

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
          style: TextStyle(
            fontSize: 18.0,
            color: Color(activeCardTextColor),
          ),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild});

  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
