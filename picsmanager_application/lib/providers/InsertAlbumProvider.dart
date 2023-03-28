import 'package:flutter/cupertino.dart';

class InsertAlbumProvider extends ChangeNotifier {

  String _valueId = "";

  String get valueId => _valueId;

  set valueId(String value) {
    _valueId = value;
    notifyListeners();
  }
}