import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_clean/domain/entities/movie_result_entity.dart/movie_result_entity.dart';

part 'movie_entity.freezed.dart';
part 'movie_entity.g.dart';

@freezed
abstract class MovieEntity with _$MovieEntity {
  const MovieEntity._();
  const factory MovieEntity({
    required int page,
    @Default(<MovieResultEntity>[]) List<MovieResultEntity> results,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_results') required int totalResults,
  }) = _MovieEntity;

  factory MovieEntity.fromJson(Map<String, dynamic> json) =>
      _$MovieEntityFromJson(json);
}
