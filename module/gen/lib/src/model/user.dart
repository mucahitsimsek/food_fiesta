// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'user.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.none,
  anyMap: true,
  checked: true,
)
class User extends INetworkModel<User> with EquatableMixin {
  User({
    this.kind,
    this.idToken,
    this.email,
    this.refreshToken,
    this.expiresIn,
    this.localId,
    this.password,
    this.name,
    this.age,
    this.returnSecureToken = true,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  String? kind;
  String? idToken;
  String? email;
  String? refreshToken;
  String? expiresIn;
  String? localId;
  String? password;
  String? name;
  int? age;
  bool returnSecureToken;

  @override
  User fromJson(Map<String, dynamic> json) => User.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$UserToJson(this);

  @override
  List<Object?> get props => [
        kind,
        idToken,
        email,
        refreshToken,
        expiresIn,
        localId,
        password,
        name,
        age,
      ];

  User copyWith({
    String? kind,
    String? idToken,
    String? email,
    String? refreshToken,
    String? expiresIn,
    String? localId,
    String? password,
    String? name,
    int? age,
  }) {
    return User(
      kind: kind ?? this.kind,
      idToken: idToken ?? this.idToken,
      email: email ?? this.email,
      refreshToken: refreshToken ?? this.refreshToken,
      expiresIn: expiresIn ?? this.expiresIn,
      localId: localId ?? this.localId,
      password: password ?? this.password,
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }
}
