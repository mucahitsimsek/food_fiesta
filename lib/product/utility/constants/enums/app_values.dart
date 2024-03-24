/// Project radius enum
enum AppValues {
  /// 4.0
  extraSmall(4),

  /// 8.0
  small(8),

  /// 12.0
  smallBig(12),

  /// 14.0
  semiMedium(14),

  /// 16.0
  medium(16),

  /// 18.0
  semiNormal(18),

  /// 20.0
  normal(20),

  /// 24.0
  big(24),

  /// 28.0
  semiLarge(28),

  /// 32.0
  large(32),

  /// 36.0
  extraLarge(36),

  /// 40.0
  extraXLarge(40),
  ;

  const AppValues(this.value);

  /// Radius value
  final double value;
}
