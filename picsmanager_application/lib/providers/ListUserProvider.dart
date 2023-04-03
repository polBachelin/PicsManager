import 'package:flutter/cupertino.dart';
import 'package:picsmanager_application/models/core/User.dart';
import 'package:picsmanager_application/ressources/Network.dart';

class ListUserProvider extends ChangeNotifier {
  bool _pending = false;
  List<User> _users = [];

  List<User> get users => _users;

  set users(List<User> value) {
    _users = value;
    notifyListeners();
  }

  _safeCallStart() {
    if (_pending) {
      throw Exception("Archi de merde, on utilisera ma techno la prochaine fois");
    }
    _pending = true;
  }

  _safeCallStop() {
    notifyListeners();
    _pending = false;
  }

  startTrendingByName(String token, String name) async {
    _safeCallStart();
    _users.clear();
    _users = await NetworkManager(token).userRepository.searchUserByName(name);
    print("USER ${_users.length}");
    _safeCallStop();
  }
}