import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../bloc/cast_movie_cubit/cast_movie_cubit.dart';

class MovieCastSection extends StatelessWidget {
  const MovieCastSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CastMovieCubit, CastMovieFetchState>(
      builder: (context, state) {
        final cubit = Modular.get<CastMovieCubit>();

        if (state.isBusy) {
          return const SizedBox(
            height: 120,
            child: Center(child: CircularProgressIndicator()),
          );
        }

        if (state.isError) {
          return const SizedBox(
            height: 120,
            child: Center(child: Text('Unable to load cast')),
          );
        }

        final casts = cubit.maybeData?.cast ?? [];

        if (casts.isEmpty) {
          return const SizedBox(
            height: 120,
            child: Center(child: Text('No cast available')),
          );
        }

        return SizedBox(
          height: 140,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: casts.length,
            separatorBuilder: (_, _) => const SizedBox(width: 12),
            itemBuilder: (_, index) {
              final cast = casts[index];

              final imageUrl =
                  cast.profilePath != null && cast.profilePath!.isNotEmpty
                  ? 'https://image.tmdb.org/t/p/w185${cast.profilePath}'
                  : null;

              return SizedBox(
                width: 90,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: imageUrl != null
                          ? NetworkImage(imageUrl)
                          : null,
                      child: imageUrl == null ? const Icon(Icons.person) : null,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      cast.name,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
