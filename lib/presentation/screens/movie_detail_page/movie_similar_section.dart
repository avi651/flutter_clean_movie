import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_clean/presentation/bloc/movie_similar_cubit/movie_similar_cubit.dart';

class MovieSimilarSection extends StatelessWidget {
  const MovieSimilarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieSimilarCubit, MovieSimilarFetchState>(
      builder: (context, state) {
        final cubit = Modular.get<MovieSimilarCubit>();

        if (state.isBusy) {
          return const SizedBox(
            height: 120,
            child: Center(child: CircularProgressIndicator()),
          );
        }

        if (state.isError) {
          return const SizedBox(
            height: 120,
            child: Center(child: Text('Unable to load cast')),
          );
        }

        final similarMovie = cubit.maybeData?.results ?? [];

        if (similarMovie.isEmpty) {
          return const SizedBox(
            height: 120,
            child: Center(child: Text('No cast available')),
          );
        }

        return SizedBox(
          height: 140,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: similarMovie.length,
            separatorBuilder: (_, _) => const SizedBox(width: 12),
            itemBuilder: (_, index) {
              final simMovie = similarMovie[index];

              final imageUrl =
                  simMovie.posterPath != null && simMovie.posterPath!.isNotEmpty
                  ? 'https://image.tmdb.org/t/p/w185${simMovie.posterPath}'
                  : null;

              return SizedBox(
                width: 90,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: imageUrl != null
                          ? NetworkImage(imageUrl)
                          : null,
                      child: imageUrl == null ? const Icon(Icons.person) : null,
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
