import 'package:crypto/crypto.dart';
import 'dart:collection';
import 'dart:convert';

abstract class Env {
  static const appName = "Movie";
  static const googleMapUrl = "";
  static const packageName = "com.abc.com";

  static const movieBaseUrl = String.fromEnvironment('BASE_URL');
  static const movieApiKey = String.fromEnvironment('API_KEY');
  static const placeApiKey = String.fromEnvironment('places_api_key');

  //HydratedStoragePassword
  static const hydratedStoragePassword = String.fromEnvironment(
    'hydrated_Storage_Password',
  );

  static List<int> get hydratedStoragePasswordBytes =>
      sha256.convert(utf8.encode(hydratedStoragePassword)).bytes;

  /// FeatureFlag
  ///
  static final List<String> _featuresList = (const String.fromEnvironment(
    'feature_flags',
  )).replaceAll("\"", "").split(", ");

  static final _featuresMap = HashMap.from({
    for (final key in _featuresList) key: true,
  });

  static bool _hasFeature(String feature) => _featuresMap[feature] ?? false;

  static bool get useApi => !_hasFeature("mock");
  static bool get skipAuthentication => _hasFeature("skip_auth");
}
