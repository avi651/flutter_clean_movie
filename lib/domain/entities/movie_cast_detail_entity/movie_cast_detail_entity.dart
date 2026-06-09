import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_cast_detail_entity.freezed.dart';
part 'movie_cast_detail_entity.g.dart';

@freezed
abstract class MovieCastDetailEntity with _$MovieCastDetailEntity {
  const MovieCastDetailEntity._();
  const factory MovieCastDetailEntity({
    required bool adult,
    required int gender,
    required int id,
    @JsonKey(name: 'known_for_department') String? knownForDepartment,
    required String name,
    @JsonKey(name: 'original_name') required String originalName,
    required double popularity,
    @JsonKey(name: 'profile_path') String? profilePath,
    @JsonKey(name: 'cast_id') int? castId,
    required String character,
    @JsonKey(name: 'credit_id') required String? creditId,
    required int order,
  }) = _MovieCastDetailEntity;

  factory MovieCastDetailEntity.fromJson(Map<String, dynamic> json) =>
      _$MovieCastDetailEntityFromJson(json);
}
