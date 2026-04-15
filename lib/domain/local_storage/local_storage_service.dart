import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:movie_clean/core/services/env.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class LocalStorageService {
  LocalStorageService._();

  static LocalStorageService? _instance;

  static LocalStorageService get to {
    _instance ??= LocalStorageService._();
    return _instance!;
  }

  Future<void> clearHydratedStorage() async {
    await HydratedBloc.storage.clear();
  }

  Future<void> initHydratedStorage() async {
    final storageDirectory = await path_provider.getApplicationCacheDirectory();

    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: HydratedStorageDirectory(storageDirectory.path),
      encryptionCipher: HydratedAesCipher(Env.hydratedStoragePasswordBytes),
    );
  }

  Future<void> initLocalStorage() async {
    await Hive.initFlutter();
  }
}
