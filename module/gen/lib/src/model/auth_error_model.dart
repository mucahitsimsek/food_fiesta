import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'auth_error_model.g.dart';

/// [AuthErrorModel] is a model class that is used to parse the error response
@JsonSerializable()
final class AuthErrorModel extends INetworkModel<AuthErrorModel>
    with EquatableMixin {
  /// [AuthErrorModel] is a model class that is used to parse the error response
  AuthErrorModel({
    this.code,
    this.message,
    this.status,
    // this.errors,
  });

  /// [AuthErrorModel.fromJson] is a factory method that is used to parse the
  /// JSON response

  @JsonKey(name: 'code')

  /// [code] is a variable that is used to store the code
  final int? code;
  @JsonKey(name: 'message')

  /// [message] is a variable that is used to store the message
  final String? message;
  @JsonKey(name: 'status')

  /// [status] is a variable that is used to store the status
  final String? status;

  // /// [errors] is a variable that is used to store the list of errors
  // @JsonKey(name: 'errors')
  // final List<Errors>? errors;

  /// [toJson] is a method that is used to convert the model class to JSON
  @override
  Map<String, dynamic> toJson() => _$AuthErrorModelToJson(this);

  @override
  List<Object?> get props => [
        code,
        message,
        status,
        // errors,
      ];

  @override
  AuthErrorModel fromJson(Map<String, dynamic> json) {
    return _$AuthErrorModelFromJson(json);
  }

  /// [copyWith] is a method that is used to copy the model class
  AuthErrorModel copyWith({
    int? code,
    String? message,
    String? status,
    List<Errors>? errors,
  }) {
    return AuthErrorModel(
      code: code ?? this.code,
      message: message ?? this.message,
      status: status ?? this.status,
      // errors: errors ?? this.errors,
    );
  }
}

/// [AuthErrorModel] is a model class that is used to parse the error response
@JsonSerializable()
final class Errors with EquatableMixin {
  /// [Errors] is a model class that is used to parse the error response
  Errors({
    this.domain,
    this.message,
    this.reason,
  });

  /// [Errors.fromJson] is a factory method that is used to parse the
  ///  JSON response
  factory Errors.fromJson(Map<String, dynamic> json) => _$ErrorsFromJson(json);

  @JsonKey(name: 'domain')

  /// [domain] is a variable that is used to store the domain
  final String? domain;
  @JsonKey(name: 'message')

  /// [message] is a variable that is used to store the message
  final String? message;
  @JsonKey(name: 'reason')

  /// [reason] is a variable that is used to store the reason
  final String? reason;

  /// [toJson] is a method that is used to convert the model class to JSON
  Map<String, dynamic> toJson() => _$ErrorsToJson(this);

  @override
  List<Object?> get props => [
        domain,
        message,
        reason,
      ];
}
