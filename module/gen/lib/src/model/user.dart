import 'package:vexana/vexana.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User extends INetworkModel<User> with EquatableMixin {
  String? kind;
  String? idToken;
  String? email;
  String? refreshToken;
  String? expiresIn;
  String? localId;
  String? password;

  User({
    this.kind,
    this.idToken,
    this.email,
    this.refreshToken,
    this.expiresIn,
    this.localId,
    this.password,
  });

  @override
  User fromJson(Map<String, dynamic> json) => User.fromJson(json);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$UserToJson(this);

  @override
  List<Object?> get props =>
      [kind, idToken, email, refreshToken, expiresIn, localId];

  User copyWith({
    String? kind,
    String? idToken,
    String? email,
    String? refreshToken,
    String? expiresIn,
    String? localId,
    String? password,
  }) {
    return User(
      kind: kind ?? this.kind,
      idToken: idToken ?? this.idToken,
      email: email ?? this.email,
      refreshToken: refreshToken ?? this.refreshToken,
      expiresIn: expiresIn ?? this.expiresIn,
      localId: localId ?? this.localId,
      password: password ?? this.password,
    );
  }
}
