import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_clean/core/shared/extensions/iterable_extensions.dart';
import 'package:movie_clean/core/shared/fetch_state.dart';
import 'package:movie_clean/core/theme/extensions/material_state_property_extension.dart';
import 'package:movie_clean/domain/entities/search_movie_entity/search_movie_entity.dart';
import 'package:movie_clean/presentation/bloc/search_movie_cubit/search_movie_cubit.dart';
import 'package:movie_clean/presentation/widgets/f_animated_scale_y.dart';
import 'package:movie_clean/presentation/widgets/f_color_builder.dart';

class MovieSearchBar extends StatelessWidget {
  final TextEditingController searchFieldController;
  final FocusNode searchFocusNode;
  const MovieSearchBar({
    required this.searchFieldController,
    required this.searchFocusNode,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FColorBuilder(
      builder: (context, colors) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SearchBar(
              controller: searchFieldController,
              focusNode: searchFocusNode,
              backgroundColor: colors.neutral.v10.msAll(),
              overlayColor: colors.neutral.v10.msAll(),
              textStyle: TextStyle(color: colors.neutral.v100).msAll(),
              surfaceTintColor: colors.neutral.v10.msAll(),
              hintText: "Search Movies",
              onTapOutside: (event) {
                searchFocusNode.unfocus();
              },
              trailing: [
                GestureDetector(
                  onTap: () {
                    searchFieldController.clear();
                  },
                  child: Icon(Icons.clear, size: 18, color: colors.neutral.v60),
                ),
              ],
            ),
            BlocBuilder<SearchMovieCubit, SearchMovieFetchState>(
              bloc: Modular.get<SearchMovieCubit>(),
              builder: (context, state) {
                return ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.5,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        FAnimatedScaleY(
                          visible: state.isBusy,
                          child: const _Loading(),
                        ),
                        switch (state) {
                          FetchStateBusy(:final data?) ||
                          FetchStateSuccess(:final data) => _Suggestions(
                            searchMovieEntity: data,
                            controller: searchFieldController,
                          ),
                          _ => const SizedBox(),
                        },
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 4),
        LinearProgressIndicator(backgroundColor: Colors.red),
      ],
    );
  }
}

class _Suggestions extends StatelessWidget {
  final SearchMovieEntity searchMovieEntity;
  final TextEditingController controller;

  const _Suggestions({
    required this.searchMovieEntity,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: _buildSuggestions(
        context,
      ).seperated(seperator: const SizedBox(height: 4)),
    );
  }

  Iterable<Widget> _buildSuggestions(BuildContext context) sync* {
    for (final suggestion in searchMovieEntity.results) {
      yield FColorBuilder(
        builder: (context, colors) {
          return GestureDetector(
            onTap: () {
              Modular.get<SearchMovieCubit>().fetch(suggestion.title);
              controller.text = "";
            },
            child: Container(
              decoration: BoxDecoration(
                color: colors.neutral.v10,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Text(suggestion.title),
            ),
          );
        },
      );
    }
  }
}
