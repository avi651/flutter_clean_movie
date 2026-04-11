import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_clean/domain/logger/logger_cubit.dart';
import 'package:movie_clean/presentation/bloc/internet_status_cubit/internet_status_cubit.dart';
import 'package:movie_clean/presentation/bloc/movie_bloc/movie_bloc.dart';
import 'package:movie_clean/presentation/bloc/movie_bottom_nav_cubit/movie_bottom_nav_cubit.dart';

class AppBlocScope extends StatelessWidget {
  final Widget child;

  const AppBlocScope({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: Modular.get<MovieBottomNavCubit>()),
        BlocProvider.value(value: Modular.get<MovieBloc>()),
        BlocProvider.value(value: Modular.get<InternetStatusCubit>()),
        BlocProvider.value(value: Modular.get<LoggerCubit>()),
      ],
      child: child,
    );
  }
}
