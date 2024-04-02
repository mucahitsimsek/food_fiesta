// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'base_error_model.g.dart';

@JsonSerializable()
class BaseErrorModel extends INetworkModel<BaseErrorModel> with EquatableMixin {
  BaseErrorModel({
    this.error,
  });
  factory BaseErrorModel.fromJson(Map<String, dynamic> json) =>
      _$BaseErrorModelFromJson(json);
  String? error;

  @override
  BaseErrorModel fromJson(Map<String, dynamic> json) =>
      BaseErrorModel.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$BaseErrorModelToJson(this);

  @override
  List<Object?> get props => [error];

  BaseErrorModel copyWith({
    String? error,
  }) {
    return BaseErrorModel(
      error: error ?? this.error,
    );
  }
}
