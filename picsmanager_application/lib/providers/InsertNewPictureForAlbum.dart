import 'package:flutter/cupertino.dart';
import 'package:picsmanager_application/models/core/Picture.dart';

class InsertNewPictureForAlbum extends ChangeNotifier {

  late Picture _picture;

  Picture get picture => _picture;

  set picture(Picture value) {
    _picture = value;
    notifyListeners();
  }
}