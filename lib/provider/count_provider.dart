import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountProvider with ChangeNotifier {
  int _count = 50;

  int get countt => _count;

  void SetCount() {
    _count++;
    notifyListeners();
  }
}
