import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:movie_clean/core/shared/permission_service.dart';
import 'package:movie_clean/core/theme/app_colors.dart';
import 'package:movie_clean/domain/local_storage/local_storage_service.dart';
import 'package:movie_clean/domain/logger/bloc_logger.dart';
import 'package:movie_clean/domain/logger/log_journal.dart';
import 'package:movie_clean/domain/logger/logger_service.dart';
import 'package:movie_clean/domain/logger/route_observer_logger.dart';

abstract class AppInitializer {
  static Future<void> init() async {
    // =====================================
    // Status Bar
    // =====================================

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: lightAppColors.primary.v100,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
      ),
    );

    // =====================================
    // Hive
    // =====================================

    await Hive.initFlutter();

    await Hive.openBox('movies');

    // =====================================
    // Services
    // =====================================

    await PermissionsService().askForPermissions();

    await LogJournal().init();

    logger.info(
      "App Launched",
      details: [
        "===================================",
        "LoggerService Started",
        "===================================",
      ],
      context: 'main',
    );

    await LocalStorageService.to.initLocalStorage();

    await LocalStorageService.to.initHydratedStorage();

    await EasyLocalization.ensureInitialized();

    Bloc.observer = BlocLogger();

    Modular.setObservers([RouteObserverLogger()]);
  }
}
