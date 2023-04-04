import 'package:picsmanager_application/models/core/Picture.dart';
import 'package:picsmanager_application/protobuf/service/picture_service.pb.dart';

abstract class PictureRepository {
  Future<void> searchPictureByTag(String query, Function(Picture) onFetch);
  Future<void> searchPictureByName(String query, Function(Picture) onFetch);

  Future<void> foreachPictures(Function(Picture) onFetch);
  Future<void> foreachPicturesByName(String query, Function(Picture) onFetch);
  Future<void> foreachPicturesFromAlbum(String album, Function(Picture) onFetch);

  Future<void> uploadPicture(List<int> image, String name);
  Future<void> sharedPicture(String id, String userId);
  Future<void> setAlbum(PictureMessage source, String album);

  Future<void> deletePicture(String id);
  Future<void> setName(PictureMessage source, String name);
}