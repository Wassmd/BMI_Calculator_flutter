import 'package:flutter/material.dart';
import 'constants.dart';

class ReusableCardChild extends StatelessWidget {
  final IconData iconData;
  final String text;

  ReusableCardChild({this.iconData, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 60,
        ),
        SizedBox(
          height: 16.0,
        ),
        Text(
          text,
          style: kTextStyle,
        ),
      ],
    );
  }
}
