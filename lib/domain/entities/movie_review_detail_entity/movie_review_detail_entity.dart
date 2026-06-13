import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_clean/domain/entities/movie_review_detail_entity/movie_author_entity.dart';

part 'movie_review_detail_entity.freezed.dart';
part 'movie_review_detail_entity.g.dart';

@freezed
abstract class MovieReviewDetailEntity with _$MovieReviewDetailEntity {
  const MovieReviewDetailEntity._();

  const factory MovieReviewDetailEntity({
    @Default('') String author,
    @JsonKey(name: 'author_details')
    @Default(MovieAuthorEntity())
    MovieAuthorEntity authorDetails,
    @Default('') String content,
    @JsonKey(name: 'created_at') String? createdAt,
    @Default('') String id,
    @JsonKey(name: 'updated_at') @Default('') String updatedAt,
    @Default('') String url,
  }) = _MovieReviewDetailEntity;

  factory MovieReviewDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$MovieReviewDetailEntityFromJson(json);
}
