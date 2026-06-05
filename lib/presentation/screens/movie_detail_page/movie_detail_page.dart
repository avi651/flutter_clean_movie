import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:movie_clean/core/resources/app_sizes.dart';
import 'package:movie_clean/presentation/bloc/top_rated_movie_bloc/top_rated_movie_bloc.dart';
import 'package:movie_clean/presentation/bloc/top_rated_movie_bloc/top_rated_movie_event.dart';
import 'package:movie_clean/presentation/bloc/top_rated_movie_bloc/top_rated_movie_state.dart';
import 'package:movie_clean/presentation/screens/movie_detail_page/movie_detail_list_view_container.dart';
import 'package:movie_clean/presentation/screens/movie_detail_page/movie_detail_view.dart';

class MovieDetailPage extends StatelessWidget {
  static const String path = '/movie-detail';

  const MovieDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopRatedMovieBloc, TopRatedMovieState>(
      bloc: Modular.get<TopRatedMovieBloc>(),
      builder: (context, state) {
        if (state.movies.isEmpty) {
          return const Scaffold(body: Center(child: Text('No Movies Found')));
        }

        return Scaffold(
          appBar: AppBar(title: const Text('Movies')),
          body: RefreshIndicator(
            onRefresh: () async {
              Modular.get<TopRatedMovieBloc>().add(
                TopRatedMovieEvent.refresh(),
              );
            },
            child: ListView.separated(
              padding: const EdgeInsets.all(AppSizes.p16),
              itemCount: state.movies.length,
              separatorBuilder: (_, _) => const SizedBox(height: AppSizes.p12),
              itemBuilder: (context, index) {
                final movie = state.movies[index];

                return MovieDetailListViewContainer(
                  onTap: () {
                    Modular.to.pushNamed(
                      MovieDetailView.path,
                      arguments: state.movies[index],
                    );
                  },
                  movie: state.movies[index],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movie.title,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SizedBox(height: AppSizes.p8.h),
                      Text(
                        movie.overview,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
