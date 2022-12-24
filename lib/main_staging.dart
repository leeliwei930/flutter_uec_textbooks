import 'package:uec_textbooks/main.dart';
import 'package:uec_textbooks/utils/flavor_config.dart';

void main() {
  runMain(
    flavorConfig: FlavorConfig(
      baseEndpoint: "",
      flavor: Flavors.staging,
    ),
  );
}
