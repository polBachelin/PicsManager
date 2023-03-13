import 'package:grpc/grpc.dart';
import 'package:picsmanager_application/domaine/repositories/GlobalRepository.dart';
import 'package:picsmanager_application/protobuf/service/album_service.pbgrpc.dart';
import 'package:picsmanager_application/protobuf/service/picture_service.pbgrpc.dart';
import 'package:picsmanager_application/protobuf/service/user_service.pbgrpc.dart';
import 'package:picsmanager_application/ressources/Network.dart';

class GlobalRepositoryGrpc extends GlobalRepository {
  final String _token;
  final _client = ClientChannel(
    NetworkConfig.host,
    port: NetworkConfig.port,
    options: const ChannelOptions(credentials: ChannelCredentials.secure()),
  );
  late final UserServiceClient _stubUser = UserServiceClient(_client, options: CallOptions(metadata: {'authorization': _token}));
  late final AlbumServiceClient _stubAlbum = AlbumServiceClient(_client, options: CallOptions(metadata: {'authorization': _token}));
  late final PictureServiceClient _stubPicture = PictureServiceClient(_client, options: CallOptions(metadata: {'authorization': _token}));

  GlobalRepositoryGrpc(this._token);

  @override
  Future<Stream<AlbumMessage>> fetchAlbums() {
    final request = ListAlbumsRequest();
    final tmp = _stubAlbum.listAlbums(request).asyncMap((event) => event.albums);

    return tmp;
  }

  @override
  Future<Stream<PictureMessage>> fetchImages() {
    final request = ListPicturesRequest();
    final tmp = _stubPicture.listPictures(request).asyncMap((event) => event.pictures);

    return tmp;
  }

  @override
  Future<List<UserMessage>> searchUser(String query) async {
    final request = SearchUsersByNameRequest(query: query);
    return (await _stubUser.searchUsersByName(request)).users;
  }
}