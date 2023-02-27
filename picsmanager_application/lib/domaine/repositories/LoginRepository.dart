abstract class LoginRepository {
  Future<String> authentication(String login, String password);
}