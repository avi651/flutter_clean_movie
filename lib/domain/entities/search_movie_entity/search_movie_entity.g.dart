// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_movie_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchMovieEntity _$SearchMovieEntityFromJson(Map<String, dynamic> json) =>
    _SearchMovieEntity(
      page: (json['page'] as num?)?.toInt() ?? 1,
      results:
          (json['results'] as List<dynamic>?)
              ?.map(
                (e) =>
                    SearchMovieResultEntity.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <SearchMovieResultEntity>[],
      totalPages: (json['total_pages'] as num?)?.toInt() ?? 0,
      totalResults: (json['total_results'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$SearchMovieEntityToJson(_SearchMovieEntity instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
