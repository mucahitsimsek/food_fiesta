import 'package:gen/gen.dart';
import 'package:vexana/vexana.dart';

///auth operation interface
abstract class AuthanticationOperation {
  Future<User> signIn(String email, String password);
  Future<IResponseModel<User?, EmptyModel?>> signUp({
    required String email,
    required String password,
  });
  Future<void> signOut();
}
