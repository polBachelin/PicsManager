import 'package:picsmanager_application/models/core/Picture.dart';

abstract class PictureRepository {
  Future<void> searchPictureByTag(String query, Function(Picture) onFetch);
  Future<void> searchPictureByName(String query, Function(Picture) onFetch);

  Future<void> foreachPictures(Function(Picture) onFetch);
  Future<void> foreachPicturesFromAlbum(int album, Function(Picture) onFetch);

  Future<void> uploadPicture(List<int> image, String name);
  Future<void> sharedPicture(String id, String userId);

  Future<void> deletePicture(String id);
}