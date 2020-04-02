import 'dart:math';

class BMICal {

  BMICal({this.height,this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI (){
    _bmi= weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25) {
      return 'زيادة في الوزن';
    }else if ( _bmi > 18.5){
      return 'طبيعي';
    }else {
      return 'نقص في الوزن';
    }
  }

  String getInfo(){
    if(_bmi >= 25) {
      return 'سوي تمارين ترة مو زين عليك هههههه';
    }else if ( _bmi > 18.5){
      return 'اي عفية ابقى هيج ^_*';
    }else {
      return 'شبيك معصعص اكل وعدل جسمك ^)^';
    }
  }

}