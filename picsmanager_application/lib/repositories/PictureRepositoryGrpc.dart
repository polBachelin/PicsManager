import 'package:grpc/grpc.dart';
import 'package:picsmanager_application/domaine/repositories/PictureRepository.dart';
import 'package:picsmanager_application/models/core/Picture.dart';
import 'package:picsmanager_application/protobuf/message/picture_message.pb.dart' as typed;
import 'package:picsmanager_application/protobuf/service/picture_service.pbgrpc.dart';
import 'package:picsmanager_application/ressources/Network.dart';

class PictureRepositoryGrpc extends PictureRepository {
  final _client = ClientChannel(
    NetworkConfig.host,
    port: NetworkConfig.port,
    options: const ChannelOptions(credentials: ChannelCredentials.secure()),
  );
  late final PictureServiceClient _stub;

  PictureRepositoryGrpc(String token) {
    _stub = PictureServiceClient(
        _client,
        options: CallOptions(metadata: {'authorization': token})
    );
  }

  @override
  Future<void> foreachPictures(Function(Picture p1) onFetch) async  {
    final request = ListPicturesRequest();
    final response = _stub.listPictures(request);

    await response.forEach((element) {
      fromProtobuf(element as typed.PictureMessage);
    });
  }

  @override
  Future<void> foreachPicturesFromAlbum(int album, Function(Picture p1) onFetch) async  {
    final request = ListAlbumPicturesRequest();
    final response = _stub.listAlbumPictures(request);

    await response.forEach((element) {
      fromProtobuf(element as typed.PictureMessage);
    });
  }

  @override
  Future<void> searchPictureByName(String query, Function(Picture) onFetch) async {
    final request = SearchPicturesByNameRequest(query: query);
    final response = _stub.searchPicturesByName(request);

    await response.forEach((element) {
      onFetch(fromProtobuf(element.pictures as typed.PictureMessage));
    });
  }

  @override
  Future<void> searchPictureByTag(String query, Function(Picture) onFetch) async {
    final request = SearchPicturesByTagRequest(query: query);
    final response = _stub.searchPicturesByTag(request);

    await response.forEach((e) =>
        fromProtobuf(e as typed.PictureMessage)
    );
  }

  @override
  Future<void> sharedPicture(String id, String userId) async  {
    final request = AddAccessToPictureRequest(pictureId: id, accessId: userId);
    await _stub.addAccessToPicture(request);
  }

  @override
  Future<void> uploadPicture(List<int> image, String name) async  {
    final request = CreatePictureRequest(
      albumId: null,
      name: name,
      tags: null,
      data: image
    );

    await _stub.createPicture(request);
  }
}