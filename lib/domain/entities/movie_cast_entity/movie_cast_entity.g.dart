// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_cast_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieCastEntity _$MovieCastEntityFromJson(Map<String, dynamic> json) =>
    _MovieCastEntity(
      id: (json['id'] as num).toInt(),
      cast:
          (json['cast'] as List<dynamic>?)
              ?.map(
                (e) =>
                    MovieCastDetailEntity.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <MovieCastDetailEntity>[],
    );

Map<String, dynamic> _$MovieCastEntityToJson(_MovieCastEntity instance) =>
    <String, dynamic>{'id': instance.id, 'cast': instance.cast};
