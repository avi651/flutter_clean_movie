import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:movie_clean/core/shared/extensions/time_to_year_extension.dart';
import 'package:movie_clean/domain/entities/movie_result_entity.dart/movie_result_entity.dart';

import 'package:movie_clean/presentation/bloc/cast_movie_cubit/cast_movie_cubit.dart';
import 'package:movie_clean/presentation/bloc/movie_review_cubit/movie_review_cubit.dart';

import 'package:movie_clean/presentation/screens/movie_detail_page/movie_cast_section.dart';
import 'package:movie_clean/presentation/screens/movie_detail_page/movie_review_section.dart';
import 'package:movie_clean/presentation/widgets/movie_sticky_header.dart';

class MovieDetailView extends StatefulWidget {
  static const String path = '/movie-detail-view';

  final MovieResultEntity movie;

  const MovieDetailView({super.key, required this.movie});

  @override
  State<MovieDetailView> createState() => _MovieDetailViewState();
}

class _MovieDetailViewState extends State<MovieDetailView> {
  late final CastMovieCubit _castCubit;
  late final MovieReviewCubit _reviewCubit;

  @override
  void initState() {
    super.initState();

    _castCubit = Modular.get<CastMovieCubit>();
    _reviewCubit = Modular.get<MovieReviewCubit>();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _fetchData();
    });
  }

  Future<void> _fetchData() async {
    if (_castCubit.isClosed || _reviewCubit.isClosed) {
      return;
    }

    await Future.wait([
      _castCubit.fetch(movieID: widget.movie.id),
      _reviewCubit.fetch(movieID: widget.movie.id),
    ]);
  }

  @override
  void dispose() {
    // Don't close Modular managed cubits.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        'https://image.tmdb.org/t/p/w780${widget.movie.backdropPath}';

    final colorScheme = Theme.of(context).colorScheme;

    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _castCubit),
        BlocProvider.value(value: _reviewCubit),
      ],
      child: Scaffold(
        backgroundColor: colorScheme.surface,
        body: CustomScrollView(
          slivers: [
            MovieStickyHeader(imageUrl: imageUrl, title: widget.movie.title),
            SliverToBoxAdapter(
              child: Transform.translate(
                offset: const Offset(0, -30),
                child: Container(
                  decoration: BoxDecoration(
                    color: colorScheme.surface,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(32),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),

                        Text(
                          widget.movie.title,
                          style: Theme.of(context).textTheme.headlineSmall
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),

                        const SizedBox(height: 12),

                        Row(
                          children: [
                            Text(widget.movie.releaseDate.toYear()),
                            const SizedBox(width: 8),
                            const Text('•'),
                            const SizedBox(width: 8),
                            const Icon(
                              Icons.star,
                              size: 18,
                              color: Colors.amber,
                            ),
                            const SizedBox(width: 4),
                            Text(widget.movie.voteAverage.toStringAsFixed(1)),
                          ],
                        ),

                        const SizedBox(height: 24),

                        Text(
                          'Story',
                          style: Theme.of(context).textTheme.titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),

                        const SizedBox(height: 12),

                        Text(
                          widget.movie.overview,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),

                        const SizedBox(height: 32),

                        Text(
                          'Cast',
                          style: Theme.of(context).textTheme.titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),

                        const SizedBox(height: 16),

                        const MovieCastSection(),

                        const SizedBox(height: 32),

                        Text(
                          'Reviews',
                          style: Theme.of(context).textTheme.titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),

                        const SizedBox(height: 16),

                        const MovieReviewSection(),

                        const SizedBox(height: 100),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
