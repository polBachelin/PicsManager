import 'package:flutter/cupertino.dart';

import '../models/core/User.dart';

class AuthenticationProvider extends ChangeNotifier {

  String _token = "";

  String get getToken => _token;

  set setToken(String value) {
    _token = value;
    notifyListeners();
  }

}
