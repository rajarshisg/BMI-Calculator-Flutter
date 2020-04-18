import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour,@required this.h,@required this.w,this.CardChild});
  final Color colour;
  final double h;
  final double w;
  final Widget CardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CardChild,
      height: h,
      width: w,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}