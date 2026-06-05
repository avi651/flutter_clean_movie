import 'package:flutter/material.dart';
import 'package:movie_clean/core/shared/extensions/num_formatter.dart';
import 'package:movie_clean/core/shared/extensions/time_to_year_extension.dart';
import 'package:movie_clean/domain/entities/movie_result_entity.dart/movie_result_entity.dart';
import 'package:movie_clean/presentation/widgets/f_color_builder.dart';
import 'package:movie_clean/presentation/widgets/movie_sticky_header.dart';

class MovieDetailView extends StatelessWidget {
  static const String path = '/movie-detail-view';
  final MovieResultEntity movie;
  const MovieDetailView({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://image.tmdb.org/t/p/w500${movie.posterPath}";
    return Scaffold(
      body: FColorBuilder(
        builder: (context, colors) {
          return Expanded(
            child: Column(
              children: [
                CustomScrollView(
                  slivers: [
                    MovieStickyHeader(
                      imageUrl: imageUrl,
                      title: movie.title,
                      // movieReleaseDate: movie.releaseDate.toYear(),
                      // rating: movie.voteAverage.toString(),
                      // voters: movie.voteCount.toCompactString(),
                    ),
                  ],
                ),
                Text(
                  movie.releaseDate.toYear(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 16,
                    color: colors.neutral.v100,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
