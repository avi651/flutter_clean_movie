// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_similar_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieSimilarEntity _$MovieSimilarEntityFromJson(Map<String, dynamic> json) =>
    _MovieSimilarEntity(
      page: (json['page'] as num).toInt(),
      results:
          (json['results'] as List<dynamic>?)
              ?.map(
                (e) => MovieSimilarDetailEntity.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          const <MovieSimilarDetailEntity>[],
      totalPages: (json['total_pages'] as num).toInt(),
      totalResults: (json['total_results'] as num).toInt(),
    );

Map<String, dynamic> _$MovieSimilarEntityToJson(_MovieSimilarEntity instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
