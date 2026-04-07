import 'package:dartz/dartz.dart';
import 'package:movie_clean/core/network_info/network_info.dart';
import 'package:movie_clean/core/services/env.dart';
import 'package:movie_clean/core/services/failure.dart';
import 'package:movie_clean/core/services/typedef.dart';
import 'package:movie_clean/data/datasources/base_datasource.dart';
import 'package:movie_clean/data/datasources/movie_local_datasource.dart';
import 'package:movie_clean/domain/entities/movie_entity/movie_entity.dart';
import 'package:movie_clean/domain/i_movie_repository/i_movie_repository.dart';

class MovieRepository implements IMovieRepository {
  final BaseDatasource client;
  final MovieLocalDatasource local;
  final NetworkInfo networkInfo;

  MovieRepository({
    required this.client,
    required this.local,
    required this.networkInfo,
  });

  @override
  RepoEitherResponse<MovieEntity> getPopularMovie() async {
    if (await networkInfo.isConnected) {
      // Online → fetch from API
      final result = await client.get(
        "movie/top_rated",
        queryParameters: {"api_key": Env.movieApiKey},
      );

      return result.fold((failure) => left(failure), (response) {
        final data = response.data;
        if (data == null) return left(Failure.unknown("Response is null"));
        try {
          final movieEntity = MovieEntity.fromJson(data);
          local.cacheMovies(movieEntity); // store in Hive
          return right(movieEntity);
        } catch (e) {
          return left(Failure.unknown(e));
        }
      });
    } else {
      // Offline → read from Hive
      final cached = local.getCachedMovies();
      if (cached != null) {
        return right(cached);
      } else {
        return left(const Failure.noInternetConnection());
      }
    }
  }
}
