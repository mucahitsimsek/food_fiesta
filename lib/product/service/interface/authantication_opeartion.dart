import 'package:gen/gen.dart';

///auth operation interface
abstract class AuthanticationOperation {
  Future<User> signIn(String email, String password);
  Future<User> signUp(String email, String password);
  Future<void> signOut();
}
