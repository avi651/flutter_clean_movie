import 'package:movie_clean/core/services/typedef.dart';
import 'package:movie_clean/domain/entities/movie_entity/movie_entity.dart';

abstract interface class IMovieRepository {
  RepoEitherResponse<MovieEntity> getPopularMovie();
}
