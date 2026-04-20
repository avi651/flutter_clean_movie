import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movie_clean/domain/shared/i_base_local_repository.dart';

abstract interface class ILanguageRepository extends IBaseLocalRepository {
  ///Saves the preffered language for given user.
  ///
  ///Takes the emp no and preffered language as parameter and save it
  /// in the storage.

  FutureOr<void> saveLanguage({
    required String userId,
    required Locale language,
  });

  ///Retrives the preferred language for a given user.
  ///
  ///Takes the userID and returns the corresponding [Locale]
  ///If it exits in the storage. Return 'null' if no preffered language is found

  FutureOr<Locale?> getLanguage(String userId);
}
