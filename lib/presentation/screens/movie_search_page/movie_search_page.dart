import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:movie_clean/core/shared/fetch_state.dart';
import 'package:movie_clean/domain/entities/search_movie_entity/search_movie_entity.dart';
import 'package:movie_clean/presentation/bloc/search_movie_cubit/search_movie_cubit.dart';

import 'movie_grid.dart';
import 'movie_search_bar.dart';

class MovieSearchPage extends StatefulWidget {
  const MovieSearchPage({super.key});

  @override
  State<MovieSearchPage> createState() => _MovieSearchPageState();
}

class _MovieSearchPageState extends State<MovieSearchPage> {
  late final TextEditingController _searchController;
  late final FocusNode _focusNode;
  late final SearchMovieCubit _cubit;

  @override
  void initState() {
    super.initState();

    _cubit = Modular.get<SearchMovieCubit>();

    _searchController = TextEditingController();

    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("WatchList")),

      body: SafeArea(
        child: Column(
          children: [
            /// SEARCH BAR
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: MovieSearchBar(
                searchFieldController: _searchController,
                searchFocusNode: _focusNode,
              ),
            ),

            /// GRID
            Expanded(
              child: BlocBuilder<SearchMovieCubit, SearchMovieFetchState>(
                bloc: _cubit,
                builder: (_, state) {
                  switch (state) {
                    case FetchStateBusy(:final SearchMovieEntity? data):
                      return MovieGrid(
                        movies:
                            data ??
                            const SearchMovieEntity(
                              page: 1,
                              results: [],
                              totalPages: 1,
                              totalResults: 0,
                            ),
                      );

                    case FetchStateSuccess(:final SearchMovieEntity data):
                      return MovieGrid(movies: data);

                    case FetchStateError():
                      return const Center(child: Text("Something went wrong"));

                    default:
                      return const Center(
                        child: Text("Search your favourite movie"),
                      );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
