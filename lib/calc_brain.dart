import 'dart:math';
class CalcBrain{
  CalcBrain({this.height,this.weight});
  final int height;
  final int weight;
  double _bmi;
  String Calculate(){
    _bmi=weight/pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }
  String Weight(){
    if(_bmi>25)
      return 'Overweight';
    else if(_bmi>18.5)
      return "Normal";
    return "Underweight";
  }
  String Message(){
    if(_bmi>25)
      return 'You are Overweight. The normal BMI is between 18.5 and 24.9.';
    else if(_bmi>18.5)
      return "You have a normal BMI. The normal BMI range is between 18.5 and 24.9.";
    return "You are Underweight. The normal BMI range is between 18.5 and 24.9.";
  }
}