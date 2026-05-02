import 'package:bloc/bloc.dart';
import 'package:movie_clean/core/services/failure.dart';
import 'package:movie_clean/core/shared/fetch_state.dart';
import 'package:movie_clean/domain/entities/popular_movie_entity/popular_movie_entity.dart';
import 'package:movie_clean/domain/i_movie_repository/i_movie_repository.dart';

typedef PopularMovieFetchState =
    FetchState<PopularMovieEntity, void, void, Failure>;

class PopularMovieCubit extends Cubit<PopularMovieFetchState> {
  PopularMovieCubit({required this.repository})
    : super(PopularMovieFetchState.initial());
  final IMovieRepository repository;

  Future<void> fetch() async {
    if (state.isBusy) return;
    emit(state.toBusy());

    final result = await repository.getPopularMovies();

    result.fold(
      (failure) {
        emit(state.toError(data: failure));
      },
      (data) {
        emit(state.toSuccess(data: data));
      },
    );
  }
}
