// ignore_for_file: public_member_api_docs

import 'package:vexana/vexana.dart';

final class Users extends INetworkModel<Users> {
  Users({
    this.data,
  });

  final Map<String, dynamic>? data;

  @override
  Users fromJson(Map<String, dynamic> json) {
    return Users(data: json);
  }

  @override
  Map<String, dynamic>? toJson() {
    return data;
  }
}
