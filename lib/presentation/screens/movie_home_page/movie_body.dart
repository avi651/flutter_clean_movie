import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_clean/presentation/bloc/top_rated_movie_bloc/top_rated_movie_bloc.dart';
import 'package:movie_clean/presentation/bloc/top_rated_movie_bloc/top_rated_movie_event.dart';
import 'package:movie_clean/presentation/bloc/top_rated_movie_bloc/top_rated_movie_state.dart';
import 'package:movie_clean/presentation/screens/movie_home_page/movie_state_handler.dart';

class MovieBody extends StatelessWidget {
  final TopRatedMovieBloc bloc;

  const MovieBody({super.key, required this.bloc});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopRatedMovieBloc, TopRatedMovieState>(
      bloc: bloc,
      builder: (context, state) {
        return MovieStateHandler(
          state: state,
          onRefresh: () => bloc.add(const TopRatedMovieEvent.refresh()),
        );
      },
    );
  }
}
