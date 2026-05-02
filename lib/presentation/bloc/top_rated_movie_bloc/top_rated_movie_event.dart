import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_rated_movie_event.freezed.dart';

@freezed
class TopRatedMovieEvent with _$TopRatedMovieEvent {
  const factory TopRatedMovieEvent.fetch() = FetchMoviesEvent;
  const factory TopRatedMovieEvent.refresh() = RefreshMoviesEvent;
  const factory TopRatedMovieEvent.clear() = ClearMoviesEvent;
}
