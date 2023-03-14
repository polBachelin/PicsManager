import 'package:flutter/cupertino.dart';
import 'package:picsmanager_application/models/core/Picture.dart';

class PicturePageProvider extends ChangeNotifier {
  List<Picture> _pictures = [];

  List<Picture> get pictures => _pictures;

  setPictures(Picture value) {
    _pictures.add(value);
    notifyListeners();
  }
}