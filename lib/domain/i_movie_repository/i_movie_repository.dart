import 'package:movie_clean/core/services/typedef.dart';
import 'package:movie_clean/domain/entities/movie_entity/movie_entity.dart';
import 'package:movie_clean/domain/entities/popular_movie_entity/popular_movie_entity.dart';
import 'package:movie_clean/domain/entities/search_movie_entity/search_movie_entity.dart';

abstract interface class IMovieRepository {
  RepoEitherResponse<MovieEntity> getTopRatedMovies();
  RepoEitherResponse<PopularMovieEntity> getPopularMovies();
  RepoEitherResponse<SearchMovieEntity> searchMovies({
    required String query,
    int page = 1,
  });
}
