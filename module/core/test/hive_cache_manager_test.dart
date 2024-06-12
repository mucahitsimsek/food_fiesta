import 'dart:developer';
import 'dart:ui';

import 'package:core/core.dart';
import 'package:flutter_test/flutter_test.dart';

import 'core/hive_common_test.dart';
import 'user_cache_model.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();
  setUp(() async {
    await initTests();
    final coreHiveManager = HiveCacheManager(
      path: 'test',
    );
    await coreHiveManager.init(
      items: [
        UserCacheModel.empty(),
      ],
    );

    log(coreHiveManager.path.toString());
  });

  test('Hive Cache Manager test', () {
    // final userCacheOperation = HiveCacheOperation<UserCacheModel>()
    //   ..add(
    //     UserCacheModel(id: '1', name: 'John Doe', email: 'mucahit'),
    //   );
    final userCacheOperation = HiveCacheOperation<UserCacheModel>();
    final userCache = userCacheOperation.get('1');
    log(userCache?.toJson().toString() ?? 'null');
    expect(userCache?.name, 'John Doe');
  });
}
