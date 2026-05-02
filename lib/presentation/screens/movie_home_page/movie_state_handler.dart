import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:movie_clean/domain/entities/movie_result_entity.dart/movie_result_entity.dart';
import 'package:movie_clean/presentation/bloc/top_rated_movie_bloc/top_rated_movie_state.dart';
import 'package:movie_clean/presentation/screens/movie_home_page/movie_carausal_item.dart';
import 'package:movie_clean/presentation/screens/movie_home_page/movie_list_view.dart';
import 'package:movie_clean/presentation/widgets/app_loader.dart';
import 'package:movie_clean/presentation/widgets/movie_carusal_widget.dart';
import 'package:movie_clean/presentation/widgets/movie_empty_widget.dart';
import 'package:movie_clean/presentation/widgets/movie_error_widget.dart';
import 'package:movie_clean/presentation/widgets/section_header.dart';

class MovieStateHandler extends StatelessWidget {
  final TopRatedMovieState state;
  final VoidCallback onRefresh;

  const MovieStateHandler({
    super.key,
    required this.state,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    // =====================================================
    // Loading
    // =====================================================

    if (state.isLoading) {
      return const Center(child: AppLoader());
    }

    // =====================================================
    // Error
    // =====================================================

    if (state.errorMessage != null) {
      return MovieErrorWidget(message: state.errorMessage!);
    }

    // =====================================================
    // Empty
    // =====================================================

    if (state.movies.isEmpty) {
      return const MovieEmptyWidget();
    }

    // =====================================================
    // Data
    // =====================================================

    final movies = state.movies;

    final size = MediaQuery.sizeOf(context);

    final isLandscape =
        MediaQuery.orientationOf(context) == Orientation.landscape;

    // =====================================================
    // Responsive Carousel Height
    // =====================================================

    final carouselHeight = isLandscape
        ? size.height * 0.32
        : size.height * 0.35;

    return SafeArea(
      child: Column(
        children: [
          // =====================================================
          // Carousel Section
          // =====================================================
          SizedBox(
            width: double.infinity,
            height: carouselHeight,
            child: MovieCarusalWidget<MovieResultEntity>(
              items: movies.take(5).toList(),
              height: carouselHeight,
              itemBuilder: (context, movie, index) {
                return MovieCarouselItem(movie: movie);
              },
            ),
          ),

          // =====================================================
          // Movie Section
          // =====================================================
          Expanded(
            child: Column(
              children: [
                SectionHeader(
                  title: "popular_movies".tr(),
                  iconTitle: "see_all".tr(),
                  onSeeAllTap: () {},
                ),

                // =====================================================
                // Movie List
                // =====================================================
                Expanded(
                  child: MovieListView(movies: movies, onRefresh: onRefresh),
                ),
                Expanded(
                  child: MovieListView(movies: movies, onRefresh: onRefresh),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
