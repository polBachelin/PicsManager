import 'package:flutter/material.dart';

class AppBarProvider extends ChangeNotifier {
  bool _shareFolder = true;
  bool _shareUser = true;
  bool _isDrawerOpen = true;

  bool get shareFolder => _shareFolder;

  set shareFolder(bool value) {
    _shareFolder = value;
    notifyListeners();
  }

  bool get shareUser => _shareUser;

  set shareUser(bool value) {
    _shareUser = value;
    notifyListeners();
  }

  bool get isDrawerOpen => _isDrawerOpen;

  set isDrawerOpen(bool value) {
    _isDrawerOpen = value;
    notifyListeners();
  }
}
