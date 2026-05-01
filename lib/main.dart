import 'package:flutter/material.dart';
import 'package:movie_clean/app.dart';
import 'package:movie_clean/app_initalizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppInitializer.init();
  runApp(const App());
}
