///Service path enum
enum NetworkServicePaths {
  ///SignUP service path
  signUp('signUp'),

  ///SignIN service path
  signIn('signInWithPassword'),

  ///Users service path
  usersPatch('/users/'),
  ;

  const NetworkServicePaths(this.value);

  ///Service path value
  final String value;

  String withJson({required String query}) => '$value/$query.json';

  ///Service path with query
  String withQuery({required String query}) => '$value?$query';
}
