import 'package:bmi_calculator/bottomWidget.dart';
import 'reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiResult,
      @required this.bmiValue,
      @required this.interpretation});

  final String bmiResult;
  final String bmiValue;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Result Page')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              style: kBigStyleLabel,
            ),
          ),
          Expanded(
              child: ReusableCard(
            colour: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  bmiResult.toUpperCase(),
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  bmiValue,
                  style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.w900),
                ),
                Text(
                  interpretation,
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          )),
          BottomWidget(
            labelTitle: 'Re-Calculate',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
