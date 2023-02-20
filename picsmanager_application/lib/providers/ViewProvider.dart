import 'package:flutter/material.dart';

class ViewProvider extends ChangeNotifier {
  int _page = 1;

  int get page => _page;

  set page(int value) {
    _page = value;
    notifyListeners();
  }

  late bool _expansionPanelTasks;

  bool get expansionPanelTasks => _expansionPanelTasks;

  set expansionPanelTasks(bool value) {
    _expansionPanelTasks = value;
    notifyListeners();
  }

  DateTime _selectedDay = DateTime.now();

  DateTime get selectedDay => _selectedDay;

  set selectedDay(DateTime value) {
    _selectedDay = value;
    notifyListeners();
  }
}
