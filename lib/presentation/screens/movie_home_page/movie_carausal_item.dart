import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart';
import 'package:movie_clean/domain/entities/movie_result_entity.dart/movie_result_entity.dart';

class MovieCarouselItem extends StatelessWidget {
  final MovieResultEntity movie;

  const MovieCarouselItem({super.key, required this.movie});

  static const String _baseUrl = "https://image.tmdb.org/t/p/w500";

  String get imageUrl {
    final path = movie.posterPath;

    if (path == null || path.isEmpty) {
      return "";
    }

    return "$_baseUrl$path";
  }

  @override
  Widget build(BuildContext context) {
    final url = imageUrl;

    return SizedBox(
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          /// 🔥 Movie Image
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              image: url.isNotEmpty
                  ? DecorationImage(
                      image: NetworkImage(url),

                      /// ✅ Full cover
                      fit: BoxFit.fitWidth,
                    )
                  : null,
            ),
            child: url.isEmpty
                ? const Center(child: Icon(Icons.movie, size: 60))
                : null,
          ),

          /// 🔥 Gradient Overlay
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.toOpacity(0.8)],
                ),
              ),
            ),
          ),

          /// 🔥 Movie Title
          Positioned(
            left: 16,
            right: 16,
            bottom: 20,
            child: Text(
              movie.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
