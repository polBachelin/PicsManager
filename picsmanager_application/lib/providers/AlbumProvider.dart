import 'package:flutter/cupertino.dart';
import 'package:picsmanager_application/models/core/Album.dart';

class AlbumProvider extends ChangeNotifier {
  List<Album> _albums = [];

  List<Album> get albums => _albums;

  setAlbums(Album value) {
    _albums.add(value);
  }
}