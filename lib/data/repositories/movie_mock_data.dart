import 'package:movie_clean/core/services/typedef.dart';

class MovieMockData {
  // Example of mock JSON data for movies
  static const Json data = {
    "page": 1,
    "results": [
      {
        "adult": false,
        "backdrop_path": "/zfbjgQE1uSd9wiPTX4VzsLi0rGG.jpg",
        "genre_ids": [18, 80],
        "id": 278,
        "original_language": "en",
        "original_title": "The Shawshank Redemption",
        "overview":
            "Imprisoned in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden...",
        "popularity": 50.7884,
        "poster_path": "/9cqNxx0GxF0bflZmeSMuL5tnGzr.jpg",
        "release_date": "1994-09-23",
        "title": "The Shawshank Redemption",
        "video": false,
        "vote_average": 8.717,
        "vote_count": 29997,
      },
      {
        "adult": false,
        "backdrop_path": "/tSPT36ZKlP2WVHJLM4cQPLSzv3b.jpg",
        "genre_ids": [18, 80],
        "id": 238,
        "original_language": "en",
        "original_title": "The Godfather",
        "overview":
            "Spanning the years 1945 to 1955, a chronicle of the fictional Italian-American Corleone crime family...",
        "popularity": 41.8091,
        "poster_path": "/3bhkrj58Vtu7enYsRolD1fZdja1.jpg",
        "release_date": "1972-03-14",
        "title": "The Godfather",
        "video": false,
        "vote_average": 8.686,
        "vote_count": 22665,
      },
      // Add other movie entries here in the same format...
    ],
    "total_pages": 537,
    "total_results": 10731,
  };
}
