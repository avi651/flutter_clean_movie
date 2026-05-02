// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_movie_result_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchMovieResultEntity _$SearchMovieResultEntityFromJson(
  Map<String, dynamic> json,
) => _SearchMovieResultEntity(
  id: (json['id'] as num).toInt(),
  adult: json['adult'] as bool? ?? false,
  backdropPath: json['backdrop_path'] as String?,
  genreIds:
      (json['genre_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList() ??
      const <int>[],
  title: json['title'] as String,
  originalLanguage: json['original_language'] as String,
  originalTitle: json['original_title'] as String,
  overview: json['overview'] as String? ?? '',
  popularity: (json['popularity'] as num?)?.toDouble() ?? 0.0,
  posterPath: json['poster_path'] as String?,
  releaseDate: json['release_date'] as String? ?? '',
  video: json['video'] as bool? ?? false,
  voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0.0,
  voteCount: (json['vote_count'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$SearchMovieResultEntityToJson(
  _SearchMovieResultEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'adult': instance.adult,
  'backdrop_path': instance.backdropPath,
  'genre_ids': instance.genreIds,
  'title': instance.title,
  'original_language': instance.originalLanguage,
  'original_title': instance.originalTitle,
  'overview': instance.overview,
  'popularity': instance.popularity,
  'poster_path': instance.posterPath,
  'release_date': instance.releaseDate,
  'video': instance.video,
  'vote_average': instance.voteAverage,
  'vote_count': instance.voteCount,
};
