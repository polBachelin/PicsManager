import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:picsmanager_application/models/core/Album.dart';
import 'package:picsmanager_application/models/core/Picture.dart';
import 'package:picsmanager_application/ressources/Network.dart';

class PicturePageProvider extends ChangeNotifier {
  bool _pending = false;
  final List<Picture> _pictures = List.empty(growable: true);

  List<Picture> get pictures => _pictures;

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

  startTrendingCustoms(String token, bool onAlbum) async {
    _safeCallStart();
    _pictures.clear();
    await NetworkManager(token).pictureRepository.foreachPictures((source) {
      if (source.albumId.isEmpty == !onAlbum) { _pictures.add(source); }
      notifyListeners();
    });
    _safeCallStop();
  }

  startTrending(String token) async {
    _safeCallStart();
    _pictures.clear();
    await NetworkManager(token).pictureRepository.foreachPictures((source) {
      _pictures.add(source);
      notifyListeners();
    });
    _safeCallStop();
  }

  startTrendingByName(String token, String name) async {
    _safeCallStart();
    _pictures.clear();
    await NetworkManager(token).pictureRepository.foreachPictures((source) {
      _pictures.add(source);
      notifyListeners();
    });
    _safeCallStop();
  }

  startTrendingByTag(String token, String tag) async {
    _safeCallStart();
    _pictures.clear();
    await NetworkManager(token).pictureRepository.foreachPictures((source) {
      _pictures.add(source);
      notifyListeners();
    });
    _safeCallStop();
  }

  startTrendingByAlbum(String token, Album album) async {
    print("click ${album.name} ${album.id}");
    _safeCallStart();
    _pictures.clear();
    await NetworkManager(token).pictureRepository.foreachPicturesFromAlbum(album.id, (source) {
      _pictures.add(source);
      notifyListeners();
    });
    _safeCallStop();
  }
}