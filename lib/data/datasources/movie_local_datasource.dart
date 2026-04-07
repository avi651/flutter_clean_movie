import 'package:hive_flutter/hive_flutter.dart';
import 'package:movie_clean/domain/entities/movie_entity/movie_entity.dart';

import 'package:movie_clean/domain/entities/movie_result_entity.dart/movie_result_entity.dart';

class MovieLocalDatasource {
  final Box _box;

  MovieLocalDatasource(this._box);

  Future<void> cacheMovies(MovieEntity movies) async {
    // Nested objects ko JSON me convert karo
    final Map<String, dynamic> jsonData = {
      'page': movies.page,
      'total_pages': movies.totalPages,
      'total_results': movies.totalResults,
      'results': movies.results.map((r) => r.toJson()).toList(),
    };
    await _box.put('popular_movies', jsonData);
  }

  MovieEntity? getCachedMovies() {
    final data = _box.get('popular_movies');
    if (data != null && data is Map) {
      // Nested list ko wapas convert karo
      final List<dynamic> resultsJson = data['results'] ?? [];
      final results = resultsJson
          .map(
            (json) =>
                MovieResultEntity.fromJson(Map<String, dynamic>.from(json)),
          )
          .toList();

      return MovieEntity(
        page: data['page'],
        totalPages: data['total_pages'],
        totalResults: data['total_results'],
        results: results,
      );
    }
    return null;
  }
}
