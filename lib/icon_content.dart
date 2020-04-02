import 'package:flutter/material.dart';
import 'constants.dart';

class ReusableGenderWidget extends StatelessWidget {

  final IconData icon ;
  final String genderText;

  ReusableGenderWidget({this.icon, this.genderText});

  @override
  Widget build(BuildContext context) {
    return Column(
//      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 75.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(genderText,
          style: kLabelTextStyle)
      ],
    );
  }
}
