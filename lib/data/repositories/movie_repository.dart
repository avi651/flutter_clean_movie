import 'package:dartz/dartz.dart';
import 'package:movie_clean/core/services/env.dart';
import 'package:movie_clean/core/services/failure.dart';
import 'package:movie_clean/core/services/typedef.dart';
import 'package:movie_clean/data/datasources/base_datasource.dart';
import 'package:movie_clean/domain/entities/movie_entity/movie_entity.dart';
import 'package:movie_clean/domain/i_movie_repository/i_movie_repository.dart';

class MovieRepository implements IMovieRepository {
  MovieRepository({required this.client});

  final BaseDatasource client;

  @override 
  RepoEitherResponse<MovieEntity> getPopularMovie() async {
    // Call the API
    final result = await client.get(
      "movie/top_rated", // TMDB endpoint
      queryParameters: {"api_key": Env.movieApiKey},
    );

    // Handle the response
    return result.fold(
      (failure) => left(failure), // Return Failure if API fails
      (response) {
        final data = response.data;
        if (data == null) {
          return left(Failure.unknown("Response data is null"));
        }
        try {
          // Convert JSON to MovieEntity
          final movieEntity = MovieEntity.fromJson(data);
          return right(movieEntity);
        } catch (e) {
          // JSON parsing failed
          return left(Failure.unknown(e));
        }
      },
    );
  }
}
