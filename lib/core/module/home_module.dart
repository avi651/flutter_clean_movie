import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_clean/core/module/app_module.dart';

class HomeModule extends Module {
  static const String route = "/home_page";

  @override
  List<Module> get imports => [CoreModule()];

  @override
  void binds(i) {}
}
