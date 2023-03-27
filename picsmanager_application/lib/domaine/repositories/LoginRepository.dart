abstract class LoginRepository {
  Future<String> authentication(String login, String password);
  Future<void> createAccount(String login, String password);
}