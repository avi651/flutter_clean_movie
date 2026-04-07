import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_clean/core/module/app_module.dart';
import 'package:movie_clean/core/shared/extensions/injector_ext.dart';
import 'package:movie_clean/domain/i_movie_repository/i_movie_repository.dart';
import 'package:movie_clean/presentation/bloc/internet_status_cubit/internet_status_cubit.dart';
import 'package:movie_clean/presentation/bloc/movie_bloc/movie_bloc.dart';

class HomeModule extends Module {
  static const String route = "/home_page";

  @override
  List<Module> get imports => [CoreModule()];

  @override
  void binds(i) {}
}
