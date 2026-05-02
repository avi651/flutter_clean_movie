// =====================================================
// movie_home_page.dart
// =====================================================

import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import 'package:movie_clean/core/theme/app_colors.dart';

import 'package:movie_clean/presentation/bloc/top_rated_movie_bloc/top_rated_movie_bloc.dart';
import 'package:movie_clean/presentation/bloc/top_rated_movie_bloc/top_rated_movie_event.dart';

import 'package:movie_clean/presentation/screens/movie_home_page/movie_body.dart';

class MovieHomePage extends StatefulWidget {
  static const String route = '/';

  static const String path = '/';

  const MovieHomePage({super.key});

  @override
  State<MovieHomePage> createState() => _MovieHomePageState();
}

class _MovieHomePageState extends State<MovieHomePage> {
  late final TopRatedMovieBloc bloc;

  @override
  void initState() {
    super.initState();

    bloc = Modular.get<TopRatedMovieBloc>()
      ..add(const TopRatedMovieEvent.fetch());
  }

  @override
  Widget build(BuildContext context) {
    final colors = AppColors.current;

    return Scaffold(
      // =====================================================
      // Dynamic Theme Background
      // =====================================================
      backgroundColor: colors.background,

      body: SafeArea(child: MovieBody(bloc: bloc)),
    );
  }
}
