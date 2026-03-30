import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_result_entity.freezed.dart';
part 'movie_result_entity.g.dart';

@freezed
abstract class MovieResultEntity with _$MovieResultEntity {
  const MovieResultEntity._();
  const factory MovieResultEntity({
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
  }) = _MovieResultEntity;

  factory MovieResultEntity.fromJson(Map<String, dynamic> json) =>
      _$MovieResultEntityFromJson(json);
}
