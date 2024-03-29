// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'auth_error_model.g.dart';

@JsonSerializable()
class AuthErrorModel extends INetworkModel<AuthErrorModel> with EquatableMixin {

  AuthErrorModel({
    this.error,
  });

  factory AuthErrorModel.fromJson(Map<String, dynamic> json) =>
      _$AuthErrorModelFromJson(json);
  Error? error;

  @override
  AuthErrorModel fromJson(Map<String, dynamic> json) =>
      AuthErrorModel.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$AuthErrorModelToJson(this);

  @override
  List<Object?> get props => [error];

  AuthErrorModel copyWith({
    Error? error,
  }) {
    return AuthErrorModel(
      error: error ?? this.error,
    );
  }
}

@JsonSerializable()
class Error extends INetworkModel<Error> with EquatableMixin {

  Error({
    this.code,
    this.message,
    this.errors,
  });

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);
  int? code;
  String? message;
  List<Errors>? errors;

  @override
  Error fromJson(Map<String, dynamic> json) => Error.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$ErrorToJson(this);

  @override
  List<Object?> get props => [code, message, errors];

  Error copyWith({
    int? code,
    String? message,
    List<Errors>? errors,
  }) {
    return Error(
      code: code ?? this.code,
      message: message ?? this.message,
      errors: errors ?? this.errors,
    );
  }
}

@JsonSerializable()
class Errors extends INetworkModel<Errors> with EquatableMixin {
  Errors({
    this.message,
    this.domain,
    this.reason,
  });
  factory Errors.fromJson(Map<String, dynamic> json) => _$ErrorsFromJson(json);
  String? message;
  String? domain;
  String? reason;

  @override
  Errors fromJson(Map<String, dynamic> json) => Errors.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$ErrorsToJson(this);

  @override
  List<Object?> get props => [message, domain, reason];

  Errors copyWith({
    String? message,
    String? domain,
    String? reason,
  }) {
    return Errors(
      message: message ?? this.message,
      domain: domain ?? this.domain,
      reason: reason ?? this.reason,
    );
  }
}
