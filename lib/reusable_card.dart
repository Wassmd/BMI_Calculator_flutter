import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function highlight;

  ReusableCard({@required this.colour, this.cardChild, this.highlight});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: highlight,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
