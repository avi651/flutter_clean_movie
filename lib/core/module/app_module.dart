import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_clean/core/services/env.dart';
import 'package:movie_clean/core/shared/extensions/injector_ext.dart';
import 'package:movie_clean/data/datasources/movie_client.dart';
import 'package:movie_clean/data/repositories/mock_movie_repository.dart';
import 'package:movie_clean/data/repositories/movie_repository.dart';
import 'package:movie_clean/domain/i_movie_repository/i_movie_repository.dart';
import 'package:movie_clean/presentation/bloc/movie_bloc/movie_bloc.dart';
import 'package:movie_clean/presentation/screens/home_page.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<MovieClient>(
      () => MovieClient(dio: Dio()),
      config: BindConfig<MovieClient>(onDispose: (value) => value.dio.close()),
    );

    i.addSingleton<IMovieRepository>(
      () => Env.useApi
          ? MovieRepository(client: i.get<MovieClient>())
          : MockMovieRepository(),
    );

    i.addBlocSingleton<MovieBloc>(
      () => MovieBloc(repository: i.get<IMovieRepository>()),
    );
  }

  @override
  void routes(RouteManager r) {
    r.child(HomePage.route, child: (context) => const HomePage());
  }
}
