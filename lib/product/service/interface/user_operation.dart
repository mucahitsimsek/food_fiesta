import 'package:gen/gen.dart';

abstract interface class UserOperation {
  /// Get a user
  Future<BaseResponseModel<User>> getUser({required String userId});

  /// Update a user
  Future<void> updateUser();

  /// Delete a user
  Future<void> deleteUser();

  /// Create a new user
  Future<void> createUser();

  /// Get all users
  Future<void> getUsers();
}
