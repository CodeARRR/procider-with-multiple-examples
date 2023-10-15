import 'package:flutter/material.dart';

class ExampleOneProvider with ChangeNotifier {
  double _value = 1;

  double get value => _value;

  void setValue(double val) {
    _value = val;
    notifyListeners();
  }
}
//setvalue(doubel){
//value=val}
// we requierd a method 
// a value
//  and a notifylistnner for listiing the value 

//problem  doube value=10, get value=> value    // onchanged method <(value){}
// setValue(double){ value=val} 