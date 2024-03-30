import 'package:core/src/cache/core/cache_model.dart';

///[CacheManager] is a abstract class that will be used to manage the cache

/// The CacheManager class is an abstract class.
abstract class CacheManager {
  ///
  CacheManager({this.path});

  /// Make your cache initialization here.
  Future<void> init({required List<CacheModel> items});

  /// Remove all cache.
  void remove();

  /// [path] is the path to the directory for example testing
  final String? path;
}
