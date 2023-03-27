import 'package:grpc/grpc.dart';
import 'package:picsmanager_application/domaine/repositories/UserRepository.dart';
import 'package:picsmanager_application/models/core/User.dart';
import 'package:picsmanager_application/protobuf/message/user_message.pb.dart' as typed;
import 'package:picsmanager_application/protobuf/service/user_service.pbgrpc.dart';
import 'package:picsmanager_application/ressources/Network.dart';

class UserRepositoryGrpc extends UserRepository {
  final _client = ClientChannel(
    NetworkConfig.host,
    port: NetworkConfig.port,
    options: const ChannelOptions(credentials: ChannelCredentials.secure()),
  );
  late final UserServiceClient _stub;

  UserRepositoryGrpc(String token) {
    _stub = UserServiceClient(
        _client,
        options: CallOptions(metadata: {'authorization': token})
    );
  }

  @override
  Future<List<User>> searchUserByName(String query) async {
    final request = SearchUsersByNameRequest(query: query);
    final response = await _stub.searchUsersByName(request);

    return response.users.map((e) =>
        fromProtobuf(e as typed.UserMessage)
    ).toList();
  }
}