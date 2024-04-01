///Service path enum
enum NetworkServicePaths {
  ///SignUP service path
  signUp('signUp'),

  ///SignIN service path
  signIn('signInWithPassword'),

  ///Users service path
  users('users'),
  ;

  const NetworkServicePaths(this.value);

  ///Service path value
  final String value;

  ///Service path with query
  String withQuery({String? query}) => query != null ? '$value?$query' : value;
}
