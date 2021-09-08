import 'dart:math';

class CalculationBrain {
  int height;
  int weight;
  double _bmi;

  CalculationBrain({this.height, this.weight});

  String bmiCalculator() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getText() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi >= 18) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have gained more weight than you should have. We\'ll advice to you to go to gym.';
    } else if (_bmi >= 18) {
      return 'You have a normal weight. Go Enjoy!';
    } else {
      return 'You have less weight than you should have. We suggest you to increase your appetite.';
    }
  }
}
