import 'package:picsmanager_application/models/core/User.dart';

abstract class UserRepository {
  Future<List<User>> searchUserByName(String query);
}