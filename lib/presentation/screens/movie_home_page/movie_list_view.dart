import 'package:flutter/material.dart';
import 'package:movie_clean/domain/entities/movie_result_entity.dart/movie_result_entity.dart';
import 'package:movie_clean/presentation/screens/movie_home_page/movie_list_item.dart';

class MovieListView extends StatelessWidget {
  final List<MovieResultEntity> movies;
  final VoidCallback onRefresh;

  const MovieListView({
    super.key,
    required this.movies,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => onRefresh(),
      child: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return MovieListItem(movie: movies[index]);
        },
      ),
    );
  }
}
