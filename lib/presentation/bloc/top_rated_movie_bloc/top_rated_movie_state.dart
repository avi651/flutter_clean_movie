import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_clean/domain/entities/movie_result_entity.dart/movie_result_entity.dart';

part 'top_rated_movie_state.freezed.dart';
part 'top_rated_movie_state.g.dart';

@freezed
abstract class TopRatedMovieState with _$TopRatedMovieState {
  const factory TopRatedMovieState({
    @Default([]) List<MovieResultEntity> movies,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _TopRatedMovieState;

  factory TopRatedMovieState.initial() => const TopRatedMovieState();

  factory TopRatedMovieState.fromJson(Map<String, dynamic> json) =>
      _$TopRatedMovieStateFromJson(json);
}
