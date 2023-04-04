import 'package:grpc/grpc.dart';
import 'package:picsmanager_application/protobuf/service/authentication_service.pb.dart';
import 'package:picsmanager_application/protobuf/service/authentication_service.pbgrpc.dart';
import 'package:picsmanager_application/domaine/repositories/LoginRepository.dart';
import 'package:picsmanager_application/protobuf/service/user_service.pb.dart';
import 'package:picsmanager_application/protobuf/service/user_service.pbgrpc.dart';
import 'package:picsmanager_application/ressources/Network.dart';

class LoginRepositoryGrpc extends LoginRepository {
  final _client = ClientChannel(
    NetworkConfig.host,
    port: NetworkConfig.port,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
  late final AuthenticationServiceClient _stubAuth =
      AuthenticationServiceClient(_client);
  late final UserServiceClient _stubUser = UserServiceClient(_client);

  @override
  Future<String> authentication(String login, String password) async {
    final request = AuthenticationRequest(email: login, password: password);
    final response = await _stubAuth.authentication(request);

    return response.token;
  }

  @override
  Future<void> createAccount(String login, String password) async {
    final request = CreateUserRequest(email: login, password: password, name: login);

    await _stubUser.createUser(request);
  }
}
