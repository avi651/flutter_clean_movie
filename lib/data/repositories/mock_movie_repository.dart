import 'package:dartz/dartz.dart';
import 'package:movie_clean/core/services/typedef.dart';
import 'package:movie_clean/data/repositories/movie_mock_data.dart';
import 'package:movie_clean/domain/entities/movie_entity/movie_entity.dart';
import 'package:movie_clean/domain/entities/popular_movie_entity/popular_movie_entity.dart';
import 'package:movie_clean/domain/entities/search_movie_entity/search_movie_entity.dart';
import 'package:movie_clean/domain/i_movie_repository/i_movie_repository.dart';

class MockMovieRepository implements IMovieRepository {
  const MockMovieRepository();
  @override
  RepoEitherResponse<MovieEntity> getTopRatedMovies() async {
    await Future.delayed(const Duration(seconds: 2));
    return right(MovieEntity.fromJson(MovieMockData.data));
  }

  @override
  RepoEitherResponse<PopularMovieEntity> getPopularMovies() async {
    await Future.delayed(const Duration(seconds: 2));
    return right(PopularMovieEntity.fromJson(MovieMockData.data));
  }

  @override
  RepoEitherResponse<SearchMovieEntity> searchMovies({
    required String query,
    int page = 1,
  }) async {
    await Future.delayed(const Duration(seconds: 2));
    return right(SearchMovieEntity.fromJson(MovieMockData.data));
  }
}
