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
        options: CallOptions(metadata: {'id_token': token})
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
  Future<List<Picture>> searchPictureByName(String query) async {
    final request = SearchPicturesByNameRequest(query: query);
    final response = await _stub.searchPicturesByName(request);

    return response.pictures.map((e) =>
        fromProtobuf(e as typed.PictureMessage)
    ).toList();
  }

  @override
  Future<List<Picture>> searchPictureByTag(String query) async {
    final request = SearchPicturesByTagRequest(query: query);
    final response = await _stub.searchPicturesByTag(request);

    return response.pictures.map((e) =>
        fromProtobuf(e as typed.PictureMessage)
    ).toList();
  }

  @override
  Future<void> sharedPicture(Picture source, int user) async  {
    // TODO
    throw UnimplementedError();
  }

  @override
  Future<void> uploadPicture(Picture toCreate) async  {
    // todo params chelou
    final request = CreatePictureRequest();

    await _stub.createPicture(request);
  }
}