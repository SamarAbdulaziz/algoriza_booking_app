import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  double lineWidth;
  double lineHeight;

Line({this.lineWidth=0,this.lineHeight=0});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: lineWidth,
      height: lineHeight,

    );
  }
}
