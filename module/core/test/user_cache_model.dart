import 'package:core/core.dart';

final class UserCacheModel with CacheModel {
  UserCacheModel({
    required this.id,
    this.name,
    this.email,
  });
  UserCacheModel.empty()
      : this(
          email: '',
          name: '',
          id: '',
        );

  @override
  final String id;
  final String? name;
  final String? email;

  @override
  CacheModel fromDynamicJson(dynamic json) {
    final mapData = json as Map<String, dynamic>;
    return UserCacheModel(
      id: mapData['id'] as String,
      name: mapData['name'] as String,
      email: mapData['email'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
    };
  }
}
