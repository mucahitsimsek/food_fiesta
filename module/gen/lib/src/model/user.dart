import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'user.g.dart';

/// User model
@JsonSerializable()
final class User extends INetworkModel<User> with EquatableMixin {
  ///User constructor
  User({
    this.email,
    this.name,
    this.password,
    this.phoneNumber,
    this.idToken,
    this.refreshToken,
    this.localId,
  });

  ///User email
  final String? email;

  ///User name
  final String? name;

  ///User password
  final String? password;

  ///User phone number
  final String? phoneNumber;

  ///User id token
  final String? idToken;

  ///User refresh token
  final String? refreshToken;

  ///User local id
  final String? localId;

  @override
  List<Object?> get props => [
        email,
        name,
        password,
        phoneNumber,
        idToken,
        refreshToken,
        localId,
      ];

  ///Copy with method
  User copyWith({
    String? email,
    String? name,
    String? password,
    String? phoneNumber,
    String? idToken,
    String? refreshToken,
    String? localId,
  }) {
    return User(
      email: email ?? this.email,
      name: name ?? this.name,
      password: password ?? this.password,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      idToken: idToken ?? this.idToken,
      refreshToken: refreshToken ?? this.refreshToken,
      localId: localId ?? this.localId,
    );
  }
  
  @override
  User fromJson(Map<String, dynamic> json) {
    return _$UserFromJson(json);
  }
  
  @override
  Map<String, dynamic>? toJson() {
    return _$UserToJson(this);
  }
}
