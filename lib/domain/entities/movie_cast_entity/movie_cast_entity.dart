import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_clean/domain/entities/movie_cast_detail_entity/movie_cast_detail_entity.dart';

part 'movie_cast_entity.freezed.dart';
part 'movie_cast_entity.g.dart';

@freezed
abstract class MovieCastEntity with _$MovieCastEntity {
  const MovieCastEntity._();
  const factory MovieCastEntity({
    required int id,
    @Default(<MovieCastDetailEntity>[]) List<MovieCastDetailEntity> cast,
    //@Default(<MovieResultEntity>[]) List<MovieResultEntity> crew,
  }) = _MovieCastEntity;

  factory MovieCastEntity.fromJson(Map<String, dynamic> json) =>
      _$MovieCastEntityFromJson(json);
}
