import 'package:uec_textbooks/models/year_group.dart';
import 'package:uec_textbooks/utils/flavor_config.dart';

class TextBookCoverImage {
  static String url({
    required YearGroup yearGroup,
    required String filename,
  }) {
    final assetUrl = FlavorConfig.instance.assetUrl;

    return "$assetUrl/$yearGroup/$filename";
  }
}
