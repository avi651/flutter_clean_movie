class ImageUtils {
  static const String _baseUrl = "https://image.tmdb.org/t/p/w500";

  static String getPosterUrl(String? path) {
    if (path == null || path.isEmpty) return "";
    return "$_baseUrl$path";
  }
}
