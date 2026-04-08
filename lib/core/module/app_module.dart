import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:dio/dio.dart';
import 'package:movie_clean/core/shared/extensions/injector_ext.dart';
import 'package:movie_clean/data/datasources/movie_local_datasource.dart';
import 'package:movie_clean/data/datasources/movie_client.dart';
import 'package:movie_clean/data/repositories/movie_repository.dart';
import 'package:movie_clean/data/repositories/mock_movie_repository.dart';
import 'package:movie_clean/domain/i_movie_repository/i_movie_repository.dart';
import 'package:movie_clean/core/network_info/network_info.dart';
import 'package:movie_clean/domain/logger/i_logger_service.dart';
import 'package:movie_clean/domain/logger/log_journal.dart';
import 'package:movie_clean/domain/logger/logger_cubit.dart';
import 'package:movie_clean/domain/logger/logger_service.dart';
import 'package:movie_clean/presentation/bloc/internet_status_cubit/internet_status_cubit.dart';
import 'package:movie_clean/presentation/bloc/movie_bloc/movie_bloc.dart';
import 'package:movie_clean/presentation/bloc/movie_bottom_nav_cubit/movie_bottom_nav_cubit.dart';
import 'package:movie_clean/core/services/env.dart';
import 'package:movie_clean/presentation/screens/movie_tabbar/movie_tabbar.dart';
import 'package:movie_clean/presentation/widgets/logs_page.dart';

class CoreModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<MovieLocalDatasource>(
      () => MovieLocalDatasource(Hive.box('movies')),
    );

    i.addSingleton<NetworkInfo>(() => NetworkInfoImpl());

    i.addSingleton<MovieClient>(() => MovieClient(dio: Dio()));

    i.addSingleton<IMovieRepository>(
      () => Env.useApi
          ? MovieRepository(
              client: i.get<MovieClient>(),
              local: i.get<MovieLocalDatasource>(),
              networkInfo: i.get<NetworkInfo>(),
            )
          : MockMovieRepository(),
    );

    // Services
    i.addSingleton<LogJournal>(
      () => LogJournal(),
      config: BindConfig<LogJournal>(onDispose: (e) => e.dispose()),
    );

    i.addSingleton<ILoggerService>(() => logger);
  }
}

class AppModule extends Module {
  AppModule();

  @override
  List<Module> get imports => [CoreModule()];

  @override
  void binds(i) {
    i.addBlocSingleton<MovieBottomNavCubit>(() => MovieBottomNavCubit());
    i.addBlocSingleton<MovieBloc>(
      () => MovieBloc(repository: i.get<IMovieRepository>()),
    );

    i.addBlocSingleton<InternetStatusCubit>(() => InternetStatusCubit());
    i.addBlocSingleton<LoggerCubit>(() => LoggerCubit());
  }

  @override
  void routes(RouteManager r) {
    r.child(MovieTabbar.route, child: (context) => const MovieTabbar());
    r.child(LogPage.path, child: (context) => const LogPage());
  }
}
