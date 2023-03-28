import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:picsmanager_application/models/core/Album.dart';
import 'package:picsmanager_application/ressources/Network.dart';

class AlbumProvider extends ChangeNotifier {
  final ObserverList<Album> _albums = ObserverList();

  ObserverList<Album> get albums => _albums;

  startTrending(String token) {
    _albums.clear();
    notifyListeners();
    NetworkManager(token).albumRepository.foreachAlbums((source) {
        _albums.add(source);
        notifyListeners();
      }
    );
    notifyListeners();
  }

  startTrendingOwned(String token) {
    _albums.clear();
    notifyListeners();
    NetworkManager(token).albumRepository.foreachAlbumsOwned((source) {
        _albums.add(source);
        notifyListeners();
      }
    );
    notifyListeners();
  }

  startTrendingShared(String token) {
    _albums.clear();
    notifyListeners();
    NetworkManager(token).albumRepository.foreachAlbumsNotOwned((source) {
        _albums.add(source);
        notifyListeners();
      }
    );
    notifyListeners();
  }

  startTrendingByName(String token, String query) {
    _albums.clear();
    notifyListeners();
    NetworkManager(token).albumRepository.searchAlbumByName(query).asStream().forEach((element) {
      for (var mbr in element) { _albums.add(mbr); }
      notifyListeners();
    });
    notifyListeners();
  }
}