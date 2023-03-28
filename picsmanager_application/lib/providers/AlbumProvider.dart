import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:picsmanager_application/models/core/Album.dart';
import 'package:picsmanager_application/ressources/Network.dart';

class AlbumProvider extends ChangeNotifier {
  bool _pending = false;
  final List<Album> _albums = List.empty(growable: true);

  List<Album> get albums => _albums;
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

  startTrending(String token) {
    _safeCallStart();
    _albums.clear();
    NetworkManager(token).albumRepository.foreachAlbums((source) {
        _albums.add(source);
        notifyListeners();
      }
    );
    _safeCallStop();
  }

  startTrendingOwned(String token) {
    _safeCallStart();
    _albums.clear();
    NetworkManager(token).albumRepository.foreachAlbumsOwned((source) {
        _albums.add(source);
        notifyListeners();
      }
    );
    _safeCallStop();
  }

  startTrendingShared(String token) {
    _safeCallStart();
    _albums.clear();
    NetworkManager(token).albumRepository.foreachAlbumsNotOwned((source) {
        _albums.add(source);
        notifyListeners();
      }
    );
    _safeCallStop();
  }

  startTrendingByName(String token, String query) {
    _safeCallStart();
    _albums.clear();
    NetworkManager(token).albumRepository.searchAlbumByName(query).asStream().forEach((element) {
      for (var mbr in element) { _albums.add(mbr); }
      notifyListeners();
    });
    _safeCallStop();
  }
}