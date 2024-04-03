import 'package:gen/gen.dart';

///auth operation interface
abstract interface class AuthtenticationOperation {
  Future<AuthResponseModel<User>> signIn({
    required User user,
  });
  Future<AuthResponseModel<User?>> signUp({
    required User user,
  });
  Future<void> signOut();
}
