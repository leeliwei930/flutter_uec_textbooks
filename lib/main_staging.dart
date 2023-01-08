import 'package:uec_textbooks_app/main.dart';
import 'package:uec_textbooks_app/utils/flavor_config.dart';

void main() {
  runMain(
    configInit: () => FlavorConfig(
      assetUrl: 'https://raw.githubusercontent.com/melvinchia3636/textbooks/main/images',
      baseUrl: "https://api.github.com/repos/melvinchia3636/textbooks",
      flavor: Flavors.staging,
    ),
  );
}
