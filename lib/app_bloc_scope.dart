import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_clean/domain/logger/logger_cubit.dart';
import 'package:movie_clean/presentation/ai_chat_cubit/ai_chat_cubit.dart';
import 'package:movie_clean/presentation/bloc/internet_status_cubit/internet_status_cubit.dart';
import 'package:movie_clean/presentation/bloc/popular_movie_cubit/popular_movie_cubit.dart';
import 'package:movie_clean/presentation/bloc/top_rated_movie_bloc/top_rated_movie_bloc.dart';
import 'package:movie_clean/presentation/bloc/movie_bottom_nav_cubit/movie_bottom_nav_cubit.dart';

import 'package:movie_clean/core/theme/bloc/theme_bloc.dart';

class AppBlocScope extends StatelessWidget {
  final Widget child;

  const AppBlocScope({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: Modular.get<MovieBottomNavCubit>()),
        BlocProvider.value(value: Modular.get<TopRatedMovieBloc>()),
        BlocProvider.value(value: Modular.get<PopularMovieCubit>()),
        BlocProvider.value(value: Modular.get<InternetStatusCubit>()),
        BlocProvider.value(value: Modular.get<LoggerCubit>()),
        BlocProvider.value(value: Modular.get<ThemeBloc>()),
        BlocProvider.value(value: Modular.get<AIChatCubit>()),
      ],
      child: child,
    );
  }
}
