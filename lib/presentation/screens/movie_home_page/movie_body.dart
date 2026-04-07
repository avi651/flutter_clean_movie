import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_clean/presentation/bloc/movie_bloc/movie_bloc.dart';
import 'package:movie_clean/presentation/bloc/movie_bloc/movie_event.dart';
import 'package:movie_clean/presentation/bloc/movie_bloc/movie_state.dart';
import 'package:movie_clean/presentation/screens/movie_home_page/movie_state_handler.dart';

class MovieBody extends StatelessWidget {
  final MovieBloc bloc;

  const MovieBody({super.key, required this.bloc});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieBloc, MovieState>(
      bloc: bloc,
      builder: (context, state) {
        return MovieStateHandler(
          state: state,
          onRefresh: () => bloc.add(const MovieEvent.refresh()),
        );
      },
    );
  }
}
