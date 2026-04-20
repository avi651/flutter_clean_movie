import 'dart:async';
import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movie_clean/data/local/i_language_repository.dart';
import 'package:movie_clean/domain/logger/logger_mixin.dart';

class LanguageRepository with LoggerMixin implements ILanguageRepository {
  LanguageRepository() {
    _init();
  }

  static const String _boxName = 'user_languages';
  final Completer<Box<String>> _boxCompleter = Completer<Box<String>>();
  Future<Box<String>> get _box => _boxCompleter.future;

  Future<void> _init() async {
    try {
      final box = await Hive.openBox<String>(_boxName);
      _boxCompleter.complete(box);
    } catch (error) {
      logError("Failed to initilize $_boxName box");
    }
  }

  @override
  FutureOr<void> dispose() async {
    (await _box).close();
  }

  @override
  FutureOr<void> clear() async {
    (await _box).clear();
  }

  @override
  FutureOr<void> saveLanguage({
    required String userId,
    required Locale language,
  }) async {
    logInfo("Save Preffered langauge: \nuserId\nlangauge:$language");
    return (await _box).put(userId, language.toString());
  }

  @override
  FutureOr<Locale?> getLanguage(String userId) async {
    final userLanguage = (await _box).get(userId);
    return userLanguage?.toLocale();
  }

  @override
  String get logContext => "LanguageRepository";
}
