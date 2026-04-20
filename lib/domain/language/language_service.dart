import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_clean/data/local/i_language_repository.dart';
import 'package:movie_clean/domain/logger/logger_mixin.dart';

class LanguageService with LoggerMixin {
  LanguageService({required this.languageRepo});

  final ILanguageRepository languageRepo;
  static const Locale defaultLocale = Locale('en', 'US');

  static LanguageService get to => Modular.get<LanguageService>();
  String? get employeeNumber => "1";

  /// Switch to the preferred language, given the employeeNumber.
  ///
  /// If the preferred language has been previously stored, set the locale.
  /// Otherwise do nothing,

  FutureOr<void> switchToStoredPreferredLanguage({
    required BuildContext context,
  }) async {
    if (employeeNumber == null) {
      context.setLocale(defaultLocale);
      return;
    }

    final Locale? preferredLocale = await languageRepo.getLanguage(
      employeeNumber!,
    );

    if (preferredLocale != null &&
        context.mounted &&
        preferredLocale != context.locale) {
      logInfo("Switching to preferred language: $preferredLocale");
    }
  }

  Locale? getCurrentLocale(BuildContext context) =>
      EasyLocalization.of(context)?.locale;

  /// Set the prefeered locale for the current user,
  /// and store preferred locale locally

  Future<void> setPreferredLocale({
    required BuildContext context,
    required Locale locale,
  }) async {
    if (locale.toString() == EasyLocalization.of(context)?.locale.toString()) {
      return;
    }
    logInfo("Prefeered language switched to: $locale");

    if (employeeNumber != null) {
      languageRepo.saveLanguage(userId: employeeNumber!, language: locale);
    }
    return EasyLocalization.of(context)?.setLocale(locale);
  }

  Future<void> resetLocale(BuildContext context) async {
    if (defaultLocale.toString() ==
        EasyLocalization.of(context)?.locale.toString()) {
      return;
    }
    return EasyLocalization.of(context)?.setLocale(defaultLocale);
  }

  @override
  String get logContext => "LaunageService";
}
