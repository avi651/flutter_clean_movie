import 'package:bloc/bloc.dart';
import 'package:movie_clean/core/shared/debouncer.dart';
import 'package:movie_clean/core/shared/fetch_state.dart';
import 'package:movie_clean/domain/entities/search_movie_entity/search_movie_entity.dart';
import 'package:movie_clean/domain/i_movie_repository/i_movie_repository.dart';

typedef SearchMovieFetchState = HydratedFetchState<SearchMovieEntity>;

class SearchMovieCubit extends Cubit<SearchMovieFetchState> {
  SearchMovieCubit({required this.repository})
    : super(SearchMovieFetchState.initial()) {
    debouncer = debounce(fetch);
  }
  final IMovieRepository repository;
  late final Debounceable<void, String> debouncer;

  void clear() {
    emit(state.toInitial());
  }

  void search(String query) {
    if (query.isEmpty) {
      emit(state.toInitial());
    }
    debouncer(query);
  }

  Future<void> fetch(String query) async {
    if (query.length <= 3) {
      emit(state.toInitial());
      return;
    }

    emit(state.toBusy(data: maybeData));

    final result = await repository.searchMovies(query: query);

    result.fold(
      (failure) {
        emit(state.toError(data: failure));
      },
      (success) {
        emit(state.toSuccess(data: success));
      },
    );
  }

  SearchMovieEntity? get maybeData => switch (state) {
    FetchStateBusy(:final data) => data,
    FetchStateSuccess(:final data) => data,
    _ => null,
  };
}
