import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_clean/domain/entities/movie_result_entity.dart/movie_result_entity.dart';

part 'movie_state.freezed.dart';
part 'movie_state.g.dart';

@freezed
abstract class MovieState with _$MovieState {
  const factory MovieState({
    @Default([]) List<MovieResultEntity> movies,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _MovieState;

  factory MovieState.initial() => const MovieState();

  factory MovieState.fromJson(Map<String, dynamic> json) =>
      _$MovieStateFromJson(json);
}
