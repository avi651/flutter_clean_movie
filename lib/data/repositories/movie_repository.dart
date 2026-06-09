import 'package:dartz/dartz.dart';
import 'package:movie_clean/core/network_info/network_info.dart';
import 'package:movie_clean/core/services/env.dart';
import 'package:movie_clean/core/services/failure.dart';
import 'package:movie_clean/core/services/typedef.dart';
import 'package:movie_clean/data/datasources/base_datasource.dart';
import 'package:movie_clean/data/datasources/movie_local_datasource.dart';
import 'package:movie_clean/domain/entities/movie_cast_entity/movie_cast_entity.dart';
import 'package:movie_clean/domain/entities/movie_entity/movie_entity.dart';
import 'package:movie_clean/domain/entities/popular_movie_entity/popular_movie_entity.dart';
import 'package:movie_clean/domain/entities/search_movie_entity/search_movie_entity.dart';
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
  RepoEitherResponse<MovieEntity> getTopRatedMovies() async {
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
          local.cacheMovies(movieEntity);
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

  @override
  RepoEitherResponse<PopularMovieEntity> getPopularMovies() async {
    if (await networkInfo.isConnected) {
      final result = await client.get(
        "movie/popular",
        queryParameters: {"api_key": Env.movieApiKey},
      );

      return result.fold((failure) => left(failure), (response) {
        final data = response.data;
        if (data == null) return left(Failure.unknown("Response is null"));
        try {
          final movieEntity = PopularMovieEntity.fromJson(data);
          return right(movieEntity);
        } catch (e) {
          return left(Failure.unknown(e));
        }
      });
    } else {
      return left(const Failure.noInternetConnection());
    }
  }

  @override
  RepoEitherResponse<SearchMovieEntity> searchMovies({
    required String query,
    int page = 1,
  }) async {
    if (await networkInfo.isConnected) {
      final result = await client.get(
        "search/movie",
        queryParameters: {
          "api_key": Env.movieApiKey,
          "query": query,
          "include_adult": false,
          "language": "en-US",
          "page": page,
        },
      );

      return result.fold((failure) => left(failure), (response) {
        final data = response.data;

        if (data == null) {
          return left(Failure.unknown("Response is null"));
        }

        try {
          final movieEntity = SearchMovieEntity.fromJson(data);

          return right(movieEntity);
        } catch (e) {
          return left(Failure.unknown(e));
        }
      });
    } else {
      return left(const Failure.noInternetConnection());
    }
  }

  @override
  RepoEitherResponse<MovieCastEntity> getMovieCast({
    required int movieId,
  }) async {
    if (await networkInfo.isConnected) {
      final result = await client.get(
        'movie/$movieId/credits',
        queryParameters: {'api_key': Env.movieApiKey},
      );

      return result.fold((failure) => left(failure), (response) {
        final data = response.data;
        if (data == null) return left(Failure.unknown("Response is null"));
        try {
          final movieCastEntity = MovieCastEntity.fromJson(data);
          return right(movieCastEntity);
        } catch (e) {
          return left(Failure.unknown(e));
        }
      });
    } else {
      return left(const Failure.noInternetConnection());
    }
  }
}
