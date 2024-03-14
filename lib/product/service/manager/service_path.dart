///Service path enum
enum ProductServicePath {
  ///Service path for user
  posts('posts'),
  ;

  const ProductServicePath(this.value);

  ///Service path value
  final String value;

  ///Service path with query
  String withQuery({String? query}) => query != null ? '$value?$query' : value;
}
