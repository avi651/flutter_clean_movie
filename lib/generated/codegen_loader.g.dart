// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> _pl_PL = {
  "app_title": "Film",
  "app_version": "Wersja aplikacji",
  "app_watchlist": "Lista obserwowanych"
};
static const Map<String,dynamic> _en_US = {
  "app_title": "Movie",
  "app_version": "App Version",
  "app_watchlist": "Watchlist"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"pl_PL": _pl_PL, "en_US": _en_US};
}
