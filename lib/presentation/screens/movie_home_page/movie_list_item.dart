import 'package:flutter/material.dart';
import 'package:movie_clean/core/utils/image_utils.dart';
import 'package:movie_clean/domain/entities/movie_result_entity.dart/movie_result_entity.dart';

class MovieListItem extends StatelessWidget {
  final MovieResultEntity movie;

  const MovieListItem({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    final imageUrl = ImageUtils.getPosterUrl(movie.posterPath);

    return ListTile(
      leading: imageUrl.isNotEmpty
          ? Image.network(
              imageUrl,
              width: 50,
              fit: BoxFit.cover,
              errorBuilder: (_, _, _) => const Icon(Icons.broken_image),
            )
          : const Icon(Icons.movie),
      title: Text(movie.title),
      subtitle: Text(movie.releaseDate),
    );
  }
}
