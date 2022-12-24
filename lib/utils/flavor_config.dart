enum Flavors {
  staging,
  prod,
}

class FlavorConfig {
  const FlavorConfig._({
    required this.baseUrl,
    required this.assetUrl,
    required this.flavor,
  });

  static late FlavorConfig _instance;
  static FlavorConfig get instance => _instance;

  factory FlavorConfig({
    required String baseUrl,
    required Flavors flavor,
    required String assetUrl,
  }) {
    _instance = FlavorConfig._(
      baseUrl: baseUrl,
      assetUrl: assetUrl,
      flavor: flavor,
    );
    return _instance;
  }

  final String baseUrl;
  final String assetUrl;
  final Flavors flavor;
}
