import 'package:picsmanager_application/models/core/Album.dart';
import 'package:picsmanager_application/protobuf/service/album_service.pb.dart';

abstract class AlbumRepository {
  Future<List<Album>> searchAlbumByName(String query);

  Future<void> foreachAlbums(Function(Album) onFetch);
  Future<void> foreachAlbumsOwned(Function(Album) onFetch);
  Future<void> foreachAlbumsNotOwned(Function(Album) onFetch);

  Future<void> uploadAlbum(String name);
  Future<void> updateAlbum(AlbumMessage source, String name, List<int> img);
  Future<void> sharedAlbum(String source, String user);
}