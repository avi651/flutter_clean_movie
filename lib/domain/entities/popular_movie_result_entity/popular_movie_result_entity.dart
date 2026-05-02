import 'package:freezed_annotation/freezed_annotation.dart';
part 'popular_movie_result_entity.freezed.dart';
part 'popular_movie_result_entity.g.dart';

@freezed
abstract class PopularMovieResultEntity with _$PopularMovieResultEntity {
  const PopularMovieResultEntity._();
  const factory PopularMovieResultEntity({
    required bool adult,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'genre_ids') required List<int> genreIds,
    required int id,
    @JsonKey(name: 'original_language') required String originalLanguage,
    @JsonKey(name: 'original_title') required String originalTitle,
    required String overview,
    required double popularity,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'release_date') required String releaseDate,
    required String title,
    required bool video,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
  }) = _PopularMovieResultEntity;

  factory PopularMovieResultEntity.fromJson(Map<String, dynamic> json) =>
      _$PopularMovieResultEntityFromJson(json);
}
