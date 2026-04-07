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
import 'package:movie_clean/presentation/bloc/movie_bloc/movie_bloc.dart';
import 'package:movie_clean/presentation/bloc/internet_status_cubit/internet_status_cubit.dart';
import 'package:movie_clean/core/services/env.dart';
import 'package:movie_clean/presentation/screens/home_page.dart';

class AppModule extends Module {
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

    i.addBlocSingleton<MovieBloc>(
      () => MovieBloc(repository: i.get<IMovieRepository>()),
    );

    i.addBlocSingleton<InternetStatusCubit>(() => InternetStatusCubit());
  }

  @override
  void routes(RouteManager r) {
    r.child(HomePage.route, child: (context) => const HomePage());
  }
}
