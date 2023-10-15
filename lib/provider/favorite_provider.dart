import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouriteItemProvider with ChangeNotifier {
  List<int> _selectedItems = [];

  List get selectedItems => _selectedItems;

  void addItem(int value) {
    selectedItems.add(value);
    notifyListeners();
  }

  void removeItem(int value) {
    selectedItems.remove(value);
    notifyListeners();
  }
}
