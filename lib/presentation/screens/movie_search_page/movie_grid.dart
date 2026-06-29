import 'package:flutter/material.dart';
import 'package:movie_clean/domain/entities/search_movie_entity/search_movie_entity.dart';

import 'movie_card.dart';

class MovieGrid extends StatelessWidget {
  final SearchMovieEntity movies;

  const MovieGrid({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    if (movies.results.isEmpty) {
      return const Center(child: Text("No Movies Found"));
    }

    return GridView.builder(
      padding: const EdgeInsets.all(16),
      physics: const BouncingScrollPhysics(),
      itemCount: movies.results.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 12,
        mainAxisSpacing: 16,

        // Fixed height for every card
        mainAxisExtent: 285,
      ),
      itemBuilder: (_, index) {
        return MovieCard(movie: movies.results[index]);
      },
    );
  }
}
