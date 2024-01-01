import 'package:flutter/material.dart';

class homeprovider extends ChangeNotifier {
  String _selectedValue = 'Others';
  TextEditingController optionController = TextEditingController();

  String get selectedValue => _selectedValue;

  void selectValue(String value) {
    _selectedValue = value;
    notifyListeners();
  }

}
