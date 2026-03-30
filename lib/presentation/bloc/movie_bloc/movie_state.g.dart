// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieState _$MovieStateFromJson(Map<String, dynamic> json) => _MovieState(
  movies:
      (json['movies'] as List<dynamic>?)
          ?.map((e) => MovieResultEntity.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  isLoading: json['isLoading'] as bool? ?? false,
  errorMessage: json['errorMessage'] as String?,
);

Map<String, dynamic> _$MovieStateToJson(_MovieState instance) =>
    <String, dynamic>{
      'movies': instance.movies,
      'isLoading': instance.isLoading,
      'errorMessage': instance.errorMessage,
    };
