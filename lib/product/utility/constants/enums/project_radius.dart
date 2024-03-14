/// Project radius enum
enum ProjectRadius {
  /// 8.0
  small(8),

  /// 16.0
  medium(16),

  /// 20.0
  normal(20),

  /// 32.0
  large(32),
  ;

  const ProjectRadius(this.value);

  /// Radius value
  final double value;
}
