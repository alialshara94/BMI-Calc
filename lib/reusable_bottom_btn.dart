import 'package:flutter/material.dart';
import 'constants.dart';
class ReusableBottomBtn extends StatelessWidget {

  ReusableBottomBtn({@required this.bottomTitle, @required this.onTap});
  final Function onTap;
  final String bottomTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        child: Center(child: Text(bottomTitle, style: kLargeBtnTextStyle,)),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 5.0),
        padding: EdgeInsets.only(bottom: 15.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}