import 'package:flutter/material.dart';

/// Loading mixin
mixin LoadingMixin<T extends StatefulWidget> on State<T> {
  ///loading notifier
  final ValueNotifier<bool> _loadingNotifier = ValueNotifier<bool>(false);

  /// Get [_loadingNotifier] notifier
  ValueNotifier<bool> get isLoadingNotifier => _loadingNotifier;

  /// Get loading state
  bool get isLoading => _loadingNotifier.value;

  ///[_loadingNotifier] setter
  void changeLoading({bool? loading}) {
    _loadingNotifier.value = loading ?? !_loadingNotifier.value;
  }
}
