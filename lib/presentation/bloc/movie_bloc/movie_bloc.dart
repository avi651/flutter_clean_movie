import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_clean/domain/i_movie_repository/i_movie_repository.dart';
import 'package:movie_clean/core/services/failure.dart';
import 'package:movie_clean/domain/entities/movie_entity/movie_entity.dart';
import 'package:movie_clean/domain/logger/i_logger_service.dart';

import 'movie_event.dart';
import 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  MovieBloc({required this.repository, this.logger})
    : super(MovieState.initial()) {
    on<FetchMoviesEvent>(_onFetch);
    on<RefreshMoviesEvent>(_onRefresh);
    on<ClearMoviesEvent>(_onClear);
  }

  final IMovieRepository repository;
  final ILoggerService? logger;

  Future<void> _onFetch(
    FetchMoviesEvent event,
    Emitter<MovieState> emit,
  ) async {
    logger?.info("FetchMoviesEvent triggered");
    emit(state.copyWith(isLoading: true, errorMessage: null));

    final result = await repository.getPopularMovie();

    result.fold(
      (failure) {
        logger?.error("Movie fetch failed", details: failure);
        _onFailure(failure, emit);
      },
      (response) {
        logger?.info(
          "API Success",
          context: "GET /movies/popular",
          payload: {"data": response.results.map((e) => e.toJson()).toList()},
        );
        _onSuccess(response, emit);
      },
    );
  }

  Future<void> _onRefresh(
    RefreshMoviesEvent event,
    Emitter<MovieState> emit,
  ) async {
    await _onFetch(const FetchMoviesEvent(), emit);
  }

  void _onClear(ClearMoviesEvent event, Emitter<MovieState> emit) {
    emit(MovieState.initial());
  }

  void _onSuccess(MovieEntity response, Emitter<MovieState> emit) {
    emit(
      state.copyWith(
        movies: response.results,
        isLoading: false,
        errorMessage: null,
      ),
    );
  }

  void _onFailure(Failure failure, Emitter<MovieState> emit) {
    emit(state.copyWith(isLoading: false, errorMessage: "Error"));
  }
}
