import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_clean/presentation/bloc/movie_bloc/movie_bloc.dart';
import 'package:movie_clean/presentation/bloc/movie_bloc/movie_event.dart';
import 'package:movie_clean/presentation/bloc/movie_bloc/movie_state.dart';

class HomePage extends StatefulWidget {
  static const String route = "/";
  static const path = '/';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final MovieBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = Modular.get<MovieBloc>();
    bloc.add(const MovieEvent.fetch());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Movies")),
      body: BlocBuilder<MovieBloc, MovieState>(
        bloc: bloc,
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.errorMessage != null) {
            return Center(child: Text(state.errorMessage!));
          }

          if (state.movies.isEmpty) {
            return const Center(child: Text("No Movies Found"));
          }

          return RefreshIndicator(
            onRefresh: () async {
              bloc.add(const MovieEvent.refresh());
            },
            child: ListView.builder(
              itemCount: state.movies.length,
              itemBuilder: (context, index) {
                final movie = state.movies[index];

                return ListTile(
                  title: Text(movie.title),
                  subtitle: Text(movie.releaseDate),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
