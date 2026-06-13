// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_review_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieReviewEntity _$MovieReviewEntityFromJson(Map<String, dynamic> json) =>
    _MovieReviewEntity(
      id: (json['id'] as num?)?.toInt() ?? 0,
      results:
          (json['results'] as List<dynamic>?)
              ?.map(
                (e) =>
                    MovieReviewDetailEntity.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <MovieReviewDetailEntity>[],
    );

Map<String, dynamic> _$MovieReviewEntityToJson(_MovieReviewEntity instance) =>
    <String, dynamic>{'id': instance.id, 'results': instance.results};
