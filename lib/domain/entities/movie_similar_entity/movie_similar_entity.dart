import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_clean/domain/entities/movie_similar_entity/movie_similar_detail_entity.dart';

part 'movie_similar_entity.freezed.dart';
part 'movie_similar_entity.g.dart';

@freezed
abstract class MovieSimilarEntity with _$MovieSimilarEntity {
  const MovieSimilarEntity._();
  const factory MovieSimilarEntity({
    required int page,
    @Default(<MovieSimilarDetailEntity>[])
    List<MovieSimilarDetailEntity> results,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_results') required int totalResults,
  }) = _MovieSimilarEntity;

  factory MovieSimilarEntity.fromJson(Map<String, dynamic> json) =>
      _$MovieSimilarEntityFromJson(json);
}
