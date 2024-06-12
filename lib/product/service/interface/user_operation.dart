import 'package:gen/gen.dart';

abstract interface class UserOperation {
  /// Get a user
  Future<BaseResponseModel<User>> getUser({
    required String userId,
    required String token,
  });

  /// Update a user
  Future<BaseResponseModel<User>> updateUser({
    required String userId,
    required User user,
    required String token,
  });

  /// Delete a user
  Future<void> deleteUser({
    required String userId,
    required String token,
  });

  /// Create a new user
  Future<BaseResponseModel<User>> createUser({
    required String userId,
    required String token,
    required User user,
  });

  /// Get all users
  Future<BaseResponseModel<List<User>>> getUsers({required String token});
}
