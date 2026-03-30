import 'package:dartz/dartz.dart';
import 'package:movie_clean/core/services/typedef.dart';
import 'package:movie_clean/data/repositories/movie_mock_data.dart';
import 'package:movie_clean/domain/entities/movie_entity/movie_entity.dart';
import 'package:movie_clean/domain/i_movie_repository/i_movie_repository.dart';

class MockMovieRepository implements IMovieRepository {
  @override
  RepoEitherResponse<MovieEntity> getPopularMovie() async {
    await Future.delayed(const Duration(seconds: 2));
    return right(MovieEntity.fromJson(MovieMockData.data));
  }
}
