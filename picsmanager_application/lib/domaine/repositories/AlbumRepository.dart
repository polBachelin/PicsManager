import 'package:picsmanager_application/models/core/Album.dart';

abstract class AlbumRepository {
  Future<List<Album>> searchAlbumByName(String query);

  Future<void> foreachAlbums(Function(Album) onFetch);
  Future<void> foreachAlbumsOwned(Function(Album) onFetch);
  Future<void> foreachAlbumsNotOwned(Function(Album) onFetch);

  Future<void> uploadAlbum(String name);
  Future<void> sharedAlbum(Album source, int user);
  Future<void> fillAlbum(Album source, int picture);
}