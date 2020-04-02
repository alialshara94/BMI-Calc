import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'reusable_bottom_btn.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiCal, @required this.bmiInfo,@required this.bmiResult});

  final bmiCal;
  final bmiResult;
  final bmiInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.bottomLeft,
              child: Text('نتيجتك  :', style: kTitleTextStyle,),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(bmiResult, style: kResultTextStyle,),
                  Text(bmiCal, style: kBMITextStyle,),
                  Text(bmiResult, style: kBodyTextStyle, textAlign: TextAlign.center,)
                ],
              ),
            ),
          ),
          ReusableBottomBtn(
            bottomTitle: 'RE-CALCULATE',
            onTap: (){
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
