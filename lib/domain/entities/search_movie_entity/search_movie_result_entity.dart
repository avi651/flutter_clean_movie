import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_movie_result_entity.freezed.dart';
part 'search_movie_result_entity.g.dart';

@freezed
abstract class SearchMovieResultEntity with _$SearchMovieResultEntity {
  const SearchMovieResultEntity._();

  const factory SearchMovieResultEntity({
    required int id,

    @Default(false) bool adult,

    @JsonKey(name: 'backdrop_path') String? backdropPath,

    @Default(<int>[]) @JsonKey(name: 'genre_ids') List<int> genreIds,

    required String title,

    @JsonKey(name: 'original_language') required String originalLanguage,

    @JsonKey(name: 'original_title') required String originalTitle,

    @Default('') String overview,

    @Default(0.0) double popularity,

    @JsonKey(name: 'poster_path') String? posterPath,

    @JsonKey(name: 'release_date') @Default('') String releaseDate,

    @Default(false) bool video,

    @JsonKey(name: 'vote_average') @Default(0.0) double voteAverage,

    @JsonKey(name: 'vote_count') @Default(0) int voteCount,
  }) = _SearchMovieResultEntity;

  factory SearchMovieResultEntity.fromJson(Map<String, dynamic> json) =>
      _$SearchMovieResultEntityFromJson(json);
}
