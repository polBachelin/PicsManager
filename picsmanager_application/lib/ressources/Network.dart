import 'package:picsmanager_application/domaine/repositories/AlbumRepository.dart';
import 'package:picsmanager_application/domaine/repositories/LoginRepository.dart';
import 'package:picsmanager_application/domaine/repositories/PictureRepository.dart';
import 'package:picsmanager_application/domaine/repositories/UserRepository.dart';
import 'package:picsmanager_application/repositories/AlbumRepositoryGrpc.dart';
import 'package:picsmanager_application/repositories/LoginRepositoryGrpc.dart';
import 'package:picsmanager_application/repositories/PictureRepositoryGrpc.dart';
import 'package:picsmanager_application/repositories/UserRepositoryGrpc.dart';

class NetworkConfig {
  static const String host = '';
  static const int port = 0;
}

class NetworkManager {
  late LoginRepository loginRepository;
  late UserRepository userRepository;
  late AlbumRepository albumRepository;
  late PictureRepository pictureRepository;

  NetworkManager(String token) {
    loginRepository = LoginRepositoryGrpc();
    userRepository = UserRepositoryGrpc(token);
    albumRepository = AlbumRepositoryGrpc(token);
    pictureRepository = PictureRepositoryGrpc(token);
  }
}