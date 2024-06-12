import 'package:core/core.dart';
import 'package:gen/gen.dart';

final class UserCacheModel with CacheModel {
  UserCacheModel({
    required this.id,
    this.user,
  });

  factory UserCacheModel.empty() {
    return UserCacheModel(
      id: '',
    );
  }

  @override
  final String id;
  final User? user;

  @override
  CacheModel fromDynamicJson(dynamic json) {
    final mapData = json as Map<String, dynamic>;
    return UserCacheModel(
      id: mapData['id'] as String,
      user: mapData['user'] != null
          ? User.fromJson(
              mapData['user'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user': user,
    };
  }
}
