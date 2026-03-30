import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_event.freezed.dart';

@freezed
class MovieEvent with _$MovieEvent {
  const factory MovieEvent.fetch() = FetchMoviesEvent;

  const factory MovieEvent.refresh() = RefreshMoviesEvent;

  const factory MovieEvent.clear() = ClearMoviesEvent;
}
