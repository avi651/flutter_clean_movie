import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_clean/domain/entities/movie_review_detail_entity/movie_review_detail_entity.dart';

part 'movie_review_entity.freezed.dart';
part 'movie_review_entity.g.dart';

@freezed
abstract class MovieReviewEntity with _$MovieReviewEntity {
  const MovieReviewEntity._();

  const factory MovieReviewEntity({
    @Default(0) int id,
    @Default(<MovieReviewDetailEntity>[]) List<MovieReviewDetailEntity> results,
  }) = _MovieReviewEntity;

  factory MovieReviewEntity.fromJson(Map<String, dynamic> json) =>
      _$MovieReviewEntityFromJson(json);
}
