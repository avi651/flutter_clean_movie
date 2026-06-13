// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_author_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieAuthorEntity _$MovieAuthorEntityFromJson(Map<String, dynamic> json) =>
    _MovieAuthorEntity(
      name: json['name'] as String? ?? '',
      username: json['username'] as String? ?? '',
      avatarPath: json['avatar_path'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MovieAuthorEntityToJson(_MovieAuthorEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.username,
      'avatar_path': instance.avatarPath,
      'rating': instance.rating,
    };
