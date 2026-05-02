// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_movie_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PopularMovieEntity _$PopularMovieEntityFromJson(Map<String, dynamic> json) =>
    _PopularMovieEntity(
      page: (json['page'] as num).toInt(),
      results:
          (json['results'] as List<dynamic>?)
              ?.map(
                (e) => PopularMovieResultEntity.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          const <PopularMovieResultEntity>[],
      totalPages: (json['total_pages'] as num).toInt(),
      totalResults: (json['total_results'] as num).toInt(),
    );

Map<String, dynamic> _$PopularMovieEntityToJson(_PopularMovieEntity instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
