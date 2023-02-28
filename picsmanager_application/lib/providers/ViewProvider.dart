import 'package:flutter/material.dart';

class ViewProvider extends ChangeNotifier {
  int _page = 1;

  int get page => _page;

  set page(int value) {
    _page = value;
    notifyListeners();
  }
}
