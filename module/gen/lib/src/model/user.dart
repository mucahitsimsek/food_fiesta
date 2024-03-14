// {
//     "userId": 1,
//     "id": 1,
//     "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
//     "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
//   },

// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'user.g.dart';

@JsonSerializable()

///User model
class User extends INetworkModel<User> with EquatableMixin {
  User({
    this.id,
    this.userId,
    this.title,
    this.body,
  });

  final int? id;
  final int? userId;
  final String? title;
  final String? body;

  @override
  List<Object?> get props => [id, userId, title, body];

  ///Converts the model to a json map
  Map<String, dynamic> toJson() => _$UserToJson(this);

  User copyWith({
    int? id,
    int? userId,
    String? title,
    String? body,
  }) {
    return User(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  @override
  User fromJson(Map<String, dynamic> json) {
    return _$UserFromJson(json);
  }
}
