///Service path enum
enum NetworkServicePaths {
  ///SignUP service path
  signUp('signUp'),

  ///SignIN service path
  signIn('signInWithPassword'),
  ;

  const NetworkServicePaths(this.value);

  ///Service path value
  final String value;

  ///Service path with query
  String withQuery({String? query}) => query != null ? '$value?$query' : value;
}
