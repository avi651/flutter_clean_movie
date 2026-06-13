import 'package:bloc/bloc.dart';
import 'package:movie_clean/core/shared/fetch_state.dart';
import 'package:movie_clean/domain/entities/movie_review_entity/movie_review_entity.dart';
import 'package:movie_clean/domain/i_movie_repository/i_movie_repository.dart';

typedef MovieReviewFetchState = HydratedFetchState<MovieReviewEntity>;

class MovieReviewCubit extends Cubit<MovieReviewFetchState> {
  MovieReviewCubit({required this.repository})
    : super(MovieReviewFetchState.initial());

  final IMovieRepository repository;

  Future<void> fetch({required int movieID}) async {
    if (state.isBusy) return;

    emit(MovieReviewFetchState.initial());
    emit(state.toBusy());

    final result = await repository.getMovieReview(movieId: movieID);

    result.fold(
      (failure) {
        emit(state.toError(data: failure));
      },
      (data) {
        emit(state.toSuccess(data: data));
      },
    );
  }

  MovieReviewEntity? get maybeData => switch (state) {
    FetchStateSuccess(:final data) => data,
    FetchStateBusy(:final data) => data,
    _ => null,
  };
}
