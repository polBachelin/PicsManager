import 'package:grpc/grpc.dart';
import 'package:picsmanager_application/domaine/repositories/AlbumRepository.dart';
import 'package:picsmanager_application/models/core/Album.dart';
import 'package:picsmanager_application/protobuf/service/album_service.pbgrpc.dart';
import 'package:picsmanager_application/ressources/Network.dart';

class AlbumRepositoryGrpc extends AlbumRepository {
  final _client = ClientChannel(
    NetworkConfig.host,
    port: NetworkConfig.port,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
  late final AlbumServiceClient _stub;

  AlbumRepositoryGrpc(String token) {
    _stub = AlbumServiceClient(
        _client,
        options: CallOptions(metadata: {'authorization': token})
    );
  }

  @override
  Future<void> foreachAlbums(Function(Album p1) onFetch) async {
    final request = ListAlbumsRequest();
    final response = _stub.listAlbums(request);

    await response.forEach((element) {
      onFetch(fromProtobuf(element.albums));
    });
  }

  @override
  Future<void> foreachAlbumsNotOwned(Function(Album p1) onFetch) async {
    final request = ListSharedAlbumsRequest();
    final response = _stub.listSharedAlbums(request);

    await response.forEach((element) {
      onFetch(fromProtobuf(element.albums));
    });
  }

  @override
  Future<void> foreachAlbumsOwned(Function(Album p1) onFetch) async {
    final request = ListOwnedAlbumsRequest();
    final response = _stub.listOwnedAlbums(request);

    await response.forEach((element) {
      onFetch(fromProtobuf(element.albums));
    });
  }

  @override
  Future<List<Album>> searchAlbumByName(String query) async {
    final request = SearchAlbumsByNameRequest(query: query);
    final response = await _stub.searchAlbumsByName(request);

    return response.albums.map((e) =>
        fromProtobuf(e)
    ).toList();
  }

  @override
  Future<void> sharedAlbum(String source, int user) async {
    // TODO: implement sharedAlbum
    throw UnimplementedError();
  }

  @override
  Future<void> uploadAlbum(String name) async {
    final request = CreateAlbumRequest(name: name);
    final response = await _stub.createAlbum(request);
    print("OUI: $response");
  }

  @override
  Future<void> updateAlbum(AlbumMessage source, String name, List<int> img) async {
    source.name = name;
    source.thumbnailData = img;
    final request = UpdateAlbumRequest(source: source);
    await _stub.updateAlbum(request);
  }
}