// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieEntity _$MovieEntityFromJson(Map<String, dynamic> json) => _MovieEntity(
  page: (json['page'] as num).toInt(),
  results:
      (json['results'] as List<dynamic>?)
          ?.map((e) => MovieResultEntity.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <MovieResultEntity>[],
  totalPages: (json['total_pages'] as num).toInt(),
  totalResults: (json['total_results'] as num).toInt(),
);

Map<String, dynamic> _$MovieEntityToJson(_MovieEntity instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
