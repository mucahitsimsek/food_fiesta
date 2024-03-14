import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

///ProductState
@immutable
final class ProductState extends Equatable {
  ///ProductState constructor
  const ProductState({
    this.themeMode = ThemeMode.light,
  });

  ///themeMode
  final ThemeMode themeMode;
  @override
  List<Object> get props => [themeMode];

  ///copyWith
  ProductState copyWith({
    ThemeMode? themeMode,
  }) {
    return ProductState(
      themeMode: themeMode ?? this.themeMode,
    );
  }
}
