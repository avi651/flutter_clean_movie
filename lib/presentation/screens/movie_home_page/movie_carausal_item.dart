import 'package:flutter/material.dart';
import 'package:movie_clean/domain/entities/movie_result_entity.dart/movie_result_entity.dart';

class MovieCarouselItem extends StatelessWidget {
  final MovieResultEntity movie;

  const MovieCarouselItem({super.key, required this.movie});

  static const String _baseUrl = "https://image.tmdb.org/t/p/w500";

  String get imageUrl {
    final path = movie.posterPath;
    if (path == null || path.isEmpty) return "";
    return "$_baseUrl$path";
  }

  @override
  Widget build(BuildContext context) {
    final url = imageUrl;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade300,
        image: url.isNotEmpty
            ? DecorationImage(image: NetworkImage(url), fit: BoxFit.cover)
            : null,
      ),
      child: Stack(
        children: [
          /// 🔥 fallback icon if no image
          if (url.isEmpty) const Center(child: Icon(Icons.movie, size: 50)),

          /// 🔥 gradient overlay (better UI)
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(12),
                ),
                gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Text(
                movie.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
