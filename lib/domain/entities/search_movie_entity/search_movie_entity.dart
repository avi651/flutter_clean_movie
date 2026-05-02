import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_clean/domain/entities/search_movie_entity/search_movie_result_entity.dart';

part 'search_movie_entity.freezed.dart';
part 'search_movie_entity.g.dart';

@freezed
abstract class SearchMovieEntity with _$SearchMovieEntity {
  const SearchMovieEntity._();

  const factory SearchMovieEntity({
    @Default(1) int page,

    @Default(<SearchMovieResultEntity>[]) List<SearchMovieResultEntity> results,

    @JsonKey(name: 'total_pages') @Default(0) int totalPages,

    @JsonKey(name: 'total_results') @Default(0) int totalResults,
  }) = _SearchMovieEntity;

  factory SearchMovieEntity.fromJson(Map<String, dynamic> json) =>
      _$SearchMovieEntityFromJson(json);
}
