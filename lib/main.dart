import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_clean/app.dart';
import 'package:movie_clean/core/colors/app_colors.dart';
import 'package:movie_clean/core/shared/permission_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: lightAppColors.primary.v100,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light,
    ),
  );

  runApp(const App());
}

Future<void> _initServices() async {
  await PermissionsService().askForPermissions();
}
