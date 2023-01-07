class LottieAssets {
  static String _getLottiesPath(String filename) => "assets/lottie/$filename";

  static String fileLoading = _getLottiesPath('file-loading.json');
  static String noConnection = _getLottiesPath('no-connection.json');
  static String emptyData = _getLottiesPath('no_data.json');
}
