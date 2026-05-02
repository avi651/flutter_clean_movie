import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_clean/domain/entities/popular_movie_result_entity/popular_movie_result_entity.dart';

part 'popular_movie_entity.freezed.dart';
part 'popular_movie_entity.g.dart';

@freezed
abstract class PopularMovieEntity with _$PopularMovieEntity {
  const PopularMovieEntity._();
  const factory PopularMovieEntity({
    required int page,
    @Default(<PopularMovieResultEntity>[])
    List<PopularMovieResultEntity> results,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_results') required int totalResults,
  }) = _PopularMovieEntity;

  factory PopularMovieEntity.fromJson(Map<String, dynamic> json) =>
      _$PopularMovieEntityFromJson(json);
}
