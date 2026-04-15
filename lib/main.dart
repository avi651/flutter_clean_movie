import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:movie_clean/app.dart';
import 'package:movie_clean/core/theme/app_colors.dart';
import 'package:movie_clean/core/shared/permission_service.dart';
import 'package:movie_clean/domain/local_storage/local_storage_service.dart';
import 'package:movie_clean/domain/logger/bloc_logger.dart';
import 'package:movie_clean/domain/logger/log_journal.dart';
import 'package:movie_clean/domain/logger/logger_service.dart';
import 'package:movie_clean/domain/logger/route_observer_logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // StatusBar setup
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: lightAppColors.primary.v100,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light,
    ),
  );

  // 1️⃣ Hive init
  await _initHive();

  // 2️⃣ Permissions
  await _initServices();

  // 3️⃣ Run App
  runApp(const App());
}

Future<void> _initHive() async {
  await Hive.initFlutter();
  await Hive.openBox('movies'); // box name 'movies'
}

Future<void> _initServices() async {
  await PermissionsService().askForPermissions();

  await LogJournal().init();

  logger.info(
    "App Launched",
    details: [
      "======================================================",
      "LoggerService Started",
      "======================================================",
    ],
    context: 'main',
  );

  await LocalStorageService.to.initLocalStorage();
  await LocalStorageService.to.initHydratedStorage();

  Bloc.observer = BlocLogger();
  Modular.setObservers([RouteObserverLogger()]);
}

const String kClearStorageTaskUniqueName = 'clear_storage_task_id';
const String kClearStorageTaskName = 'clear_storage_task';

@pragma('vm:entry-point')
void callbackDispatcher() {}
