import 'package:flutter/material.dart';
import 'constants.dart';
import 'results_page.dart';

class BottomWidget extends StatelessWidget {
  BottomWidget({this.onTap, this.labelTitle});

  final Function onTap;
  final String labelTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            labelTitle,
            style: kLargeButton,
          ),
        ),
        padding: EdgeInsets.only(bottom: 15.0),
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
