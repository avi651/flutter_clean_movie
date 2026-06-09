import 'package:bloc/bloc.dart';
import 'package:movie_clean/core/shared/fetch_state.dart';
import 'package:movie_clean/domain/entities/movie_cast_entity/movie_cast_entity.dart';
import 'package:movie_clean/domain/i_movie_repository/i_movie_repository.dart';

typedef CastMovieFetchState = HydratedFetchState<MovieCastEntity>;

class CastMovieCubit extends Cubit<CastMovieFetchState> {
  CastMovieCubit({required this.repository})
    : super(CastMovieFetchState.initial());

  final IMovieRepository repository;

  Future<void> fetch({required int movieID}) async {
    if (state.isBusy) return;

    emit(CastMovieFetchState.initial());
    emit(state.toBusy());

    final result = await repository.getMovieCast(movieId: movieID);

    result.fold(
      (failure) {
        emit(state.toError(data: failure));
      },
      (data) {
        emit(state.toSuccess(data: data));
      },
    );
  }

  MovieCastEntity? get maybeData => switch (state) {
    FetchStateSuccess(:final data) => data,
    FetchStateBusy(:final data) => data,
    _ => null,
  };
}
