import 'package:picsmanager_application/protobuf/message/album_message.pb.dart';
import 'package:picsmanager_application/protobuf/message/picture_message.pb.dart';
import 'package:picsmanager_application/protobuf/message/user_message.pb.dart';

abstract class GlobalRepository {
  Future<List<UserMessage>> searchUser(String query);
  Future<Stream<AlbumMessage>> fetchAlbums();
  Future<Stream<PictureMessage>> fetchImages();
}