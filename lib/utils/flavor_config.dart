enum Flavors {
  staging,
  prod,
}

class FlavorConfig {
  const FlavorConfig._({
    required this.baseEndpoint,
    required this.flavor,
  });

  static late FlavorConfig _instance;
  static FlavorConfig get instance => _instance;

  factory FlavorConfig({
    required String baseEndpoint,
    required Flavors flavor,
  }) {
    _instance = FlavorConfig._(
      baseEndpoint: baseEndpoint,
      flavor: flavor,
    );
    return _instance;
  }

  final String baseEndpoint;
  final Flavors flavor;
}
