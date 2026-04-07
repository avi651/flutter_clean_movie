import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_clean/presentation/bloc/movie_bloc/movie_bloc.dart';
import 'package:movie_clean/presentation/bloc/movie_bloc/movie_event.dart';
import 'package:movie_clean/presentation/screens/movie_home_page/movie_body.dart';
import 'package:movie_clean/presentation/widgets/movie_app_bar.dart';

class MovieHomePage extends StatefulWidget {
  static const String route = "/";
  static const path = '/';

  const MovieHomePage({super.key});

  @override
  State<MovieHomePage> createState() => _MovieHomePageState();
}

class _MovieHomePageState extends State<MovieHomePage> {
  late final MovieBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = Modular.get<MovieBloc>()..add(const MovieEvent.fetch());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MovieAppBar(appBarText: "Movies"),
      body: MovieBody(bloc: bloc),
    );
  }
}
