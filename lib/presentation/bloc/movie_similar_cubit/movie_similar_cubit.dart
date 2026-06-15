import 'package:bloc/bloc.dart';
import 'package:movie_clean/core/shared/fetch_state.dart';
import 'package:movie_clean/domain/entities/movie_similar_entity/movie_similar_entity.dart';
import 'package:movie_clean/domain/i_movie_repository/i_movie_repository.dart';

typedef MovieSimilarFetchState = HydratedFetchState<MovieSimilarEntity>;

class MovieSimilarCubit extends Cubit<MovieSimilarFetchState> {
  MovieSimilarCubit({required this.repository})
    : super(MovieSimilarFetchState.initial());

  final IMovieRepository repository;

  Future<void> fetch({required int movieID}) async {
    if (state.isBusy) return;

    emit(MovieSimilarFetchState.initial());
    emit(state.toBusy());

    final result = await repository.getSimilarMovie(movieId: movieID);

    result.fold(
      (failure) {
        emit(state.toError(data: failure));
      },
      (data) {
        emit(state.toSuccess(data: data));
      },
    );
  }

  MovieSimilarEntity? get maybeData => switch (state) {
    FetchStateSuccess(:final data) => data,
    FetchStateBusy(:final data) => data,
    _ => null,
  };
}
