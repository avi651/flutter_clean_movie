// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_rated_movie_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TopRatedMovieState _$TopRatedMovieStateFromJson(Map<String, dynamic> json) =>
    _TopRatedMovieState(
      movies:
          (json['movies'] as List<dynamic>?)
              ?.map(
                (e) => MovieResultEntity.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$TopRatedMovieStateToJson(_TopRatedMovieState instance) =>
    <String, dynamic>{
      'movies': instance.movies,
      'isLoading': instance.isLoading,
      'errorMessage': instance.errorMessage,
    };
