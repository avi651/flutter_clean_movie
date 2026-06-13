import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_author_entity.freezed.dart';
part 'movie_author_entity.g.dart';

@freezed
abstract class MovieAuthorEntity with _$MovieAuthorEntity {
  const MovieAuthorEntity._();

  const factory MovieAuthorEntity({
    @Default('') String name,
    @Default('') String username,
    @JsonKey(name: 'avatar_path') String? avatarPath,
    double? rating,
  }) = _MovieAuthorEntity;

  factory MovieAuthorEntity.fromJson(Map<String, dynamic> json) =>
      _$MovieAuthorEntityFromJson(json);
}
