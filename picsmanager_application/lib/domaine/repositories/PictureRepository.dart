import 'package:picsmanager_application/models/core/Picture.dart';

abstract class PictureRepository {
  Future<List<Picture>> searchPictureByTag(String query);
  Future<List<Picture>> searchPictureByName(String query);

  Future<void> foreachPictures(Function(Picture) onFetch);
  Future<void> foreachPicturesFromAlbum(int album, Function(Picture) onFetch);

  Future<void> uploadPicture(Picture toCreate);
  Future<void> sharedPicture(Picture source, int user);
}