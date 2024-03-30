import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:food_fiesta/product/cache/model/user_cache_model.dart';

@immutable
final class ProductCahe {
  ProductCahe({
    required CacheManager cacheManager,
  }) : _cacheManager = cacheManager;

  late final CacheManager _cacheManager;

  Future<void> initCache() async => _cacheManager.init(
        items: [
          UserCacheModel.empty(),
        ],
      );

  late final userCacheOperation = HiveCacheOperation<UserCacheModel>();
}
