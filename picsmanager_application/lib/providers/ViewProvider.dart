import 'package:flutter/material.dart';

class ViewProvider extends ChangeNotifier {
  int _page = 1;
  double _taille = 120;

  int get page => _page;

  set page(int value) {
    _page = value;
    notifyListeners();
  }

  double get taille => _taille;

  set taille(double value) {
    _taille = value;
    notifyListeners();
  }
}
