import 'package:flutter/cupertino.dart';
import 'package:picsmanager_application/models/core/Picture.dart';
import 'package:picsmanager_application/ressources/Network.dart';

class PicturePageProvider extends ChangeNotifier {
  final List<Picture> _pictures = List.empty(growable: true);

  List<Picture> get pictures => _pictures;

  startTrending(String token) {
    _pictures.clear();

    notifyListeners();
    NetworkManager(token).pictureRepository.foreachPictures((source) {
      _pictures.add(source);
      notifyListeners();
    });
  }

  startTrendingByName(String token, String name) {
    _pictures.clear();
    NetworkManager(token).pictureRepository.foreachPictures((source) {
      _pictures.add(source);
      notifyListeners();
    });
  }

  startTrendingByTag(String token, String tag) {
    _pictures.clear();
    NetworkManager(token).pictureRepository.foreachPictures((source) {
      _pictures.add(source);
      notifyListeners();
    });
  }
}