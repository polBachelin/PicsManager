import 'package:flutter/cupertino.dart';
import 'package:picsmanager_application/models/core/Album.dart';
import 'package:picsmanager_application/ressources/Network.dart';

class AlbumProvider extends ChangeNotifier {
  final List<Album> _albums = List.empty(growable: true);

  List<Album> get albums => _albums;

  startTrending(String token) {
    _albums.clear();
    NetworkManager(token).albumRepository.foreachAlbums((source) {
        _albums.add(source);
        notifyListeners();
      }
    );
  }

  startTrendingOwned(String token) {
    _albums.clear();
    NetworkManager(token).albumRepository.foreachAlbumsOwned((source) {
        _albums.add(source);
        notifyListeners();
      }
    );
  }

  startTrendingShared(String token) {
    _albums.clear();
    NetworkManager(token).albumRepository.foreachAlbumsNotOwned((source) {
        _albums.add(source);
        notifyListeners();
      }
    );
  }

  startTrendingByName(String token, String query) {
    _albums.clear();
    NetworkManager(token).albumRepository.searchAlbumByName(query).asStream().forEach((element) {
      _albums.addAll(element);
    });
  }
}