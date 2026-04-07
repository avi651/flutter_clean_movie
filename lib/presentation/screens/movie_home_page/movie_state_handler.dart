import 'package:flutter/material.dart';
import 'package:movie_clean/presentation/bloc/movie_bloc/movie_state.dart';
import 'package:movie_clean/presentation/screens/movie_home_page/movie_list_view.dart';
import 'package:movie_clean/presentation/widgets/movie_empty_widget.dart';
import 'package:movie_clean/presentation/widgets/movie_error_widget.dart';

class MovieStateHandler extends StatelessWidget {
  final MovieState state;
  final VoidCallback onRefresh;

  const MovieStateHandler({
    super.key,
    required this.state,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.errorMessage != null) {
      return MovieErrorWidget(message: state.errorMessage!);
    }

    if (state.movies.isEmpty) {
      return const MovieEmptyWidget();
    }

    return MovieListView(movies: state.movies, onRefresh: onRefresh);
  }
}
