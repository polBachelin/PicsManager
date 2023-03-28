import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:picsmanager_application/models/core/Picture.dart';
import 'package:picsmanager_application/ressources/Network.dart';

class PicturePageProvider extends ChangeNotifier {
  final ObserverList<Picture> _pictures = ObserverList();

  ObserverList<Picture> get pictures => _pictures;

  startTrending(String token) {
    _pictures.clear();
    notifyListeners();
    NetworkManager(token).pictureRepository.foreachPictures((source) {
      _pictures.add(source);
      notifyListeners();
    });
    notifyListeners();
  }

  startTrendingByName(String token, String name) {
    _pictures.clear();
    notifyListeners();
    NetworkManager(token).pictureRepository.foreachPictures((source) {
      _pictures.add(source);
      notifyListeners();
    });
    notifyListeners();
  }

  startTrendingByTag(String token, String tag) {
    _pictures.clear();
    notifyListeners();
    NetworkManager(token).pictureRepository.foreachPictures((source) {
      _pictures.add(source);
      notifyListeners();
    });
    notifyListeners();
  }
}