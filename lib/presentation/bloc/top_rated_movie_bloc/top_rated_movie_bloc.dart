import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_clean/domain/i_movie_repository/i_movie_repository.dart';
import 'package:movie_clean/core/services/failure.dart';
import 'package:movie_clean/domain/entities/movie_entity/movie_entity.dart';
import 'package:movie_clean/domain/logger/i_logger_service.dart';

import 'top_rated_movie_event.dart';
import 'top_rated_movie_state.dart';

class TopRatedMovieBloc extends Bloc<TopRatedMovieEvent, TopRatedMovieState> {
  TopRatedMovieBloc({required this.repository, this.logger})
    : super(TopRatedMovieState.initial()) {
    on<FetchMoviesEvent>(_onFetch);
    on<RefreshMoviesEvent>(_onRefresh);
    on<ClearMoviesEvent>(_onClear);
  }

  final IMovieRepository repository;
  final ILoggerService? logger;

  Future<void> _onFetch(
    FetchMoviesEvent event,
    Emitter<TopRatedMovieState> emit,
  ) async {
    logger?.info("FetchMoviesEvent triggered");
    emit(state.copyWith(isLoading: true, errorMessage: null));

    final result = await repository.getTopRatedMovies();

    result.fold(
      (failure) {
        logger?.error("Movie fetch failed", details: failure);
        _onFailure(failure, emit);
      },
      (response) {
        logger?.info(
          "API Success",
          context: "GET /movies/top_rated",
          payload: {"data": response.results.map((e) => e.toJson()).toList()},
        );
        _onSuccess(response, emit);
      },
    );
  }

  Future<void> _onRefresh(
    RefreshMoviesEvent event,
    Emitter<TopRatedMovieState> emit,
  ) async {
    await _onFetch(const FetchMoviesEvent(), emit);
  }

  void _onClear(ClearMoviesEvent event, Emitter<TopRatedMovieState> emit) {
    emit(TopRatedMovieState.initial());
  }

  void _onSuccess(MovieEntity response, Emitter<TopRatedMovieState> emit) {
    emit(
      state.copyWith(
        movies: response.results,
        isLoading: false,
        errorMessage: null,
      ),
    );
  }

  void _onFailure(Failure failure, Emitter<TopRatedMovieState> emit) {
    emit(state.copyWith(isLoading: false, errorMessage: "Error"));
  }
}
